git fetch upstream

# 2. mainブランチを最新に更新
git checkout main
git merge upstream/main
git push --no-verify origin main

# 3. フィーチャーブランチに切り替え
git checkout feature/cerebras-rate-limit-backoff

# 4. mainの最新変更をフィーチャーブランチにマージ
git merge main

# コンフリクトがある場合は解決後：
# git add .
# git commit -m "resolve merge conflicts with main"

# 5. フォークにプッシュ
git push --no-verify origin feature/cerebras-rate-limit-backoff