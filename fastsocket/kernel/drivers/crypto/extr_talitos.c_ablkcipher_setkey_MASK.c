#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct talitos_ctx {unsigned int keylen; int /*<<< orphan*/  key; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_alg {unsigned int min_keysize; unsigned int max_keysize; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 unsigned int TALITOS_MAX_KEY_SIZE ; 
 struct ablkcipher_alg* FUNC0 (struct crypto_ablkcipher*) ; 
 struct talitos_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_ablkcipher *cipher,
			     const u8 *key, unsigned int keylen)
{
	struct talitos_ctx *ctx = FUNC1(cipher);
	struct ablkcipher_alg *alg = FUNC0(cipher);

	if (keylen > TALITOS_MAX_KEY_SIZE)
		goto badkey;

	if (keylen < alg->min_keysize || keylen > alg->max_keysize)
		goto badkey;

	FUNC3(&ctx->key, key, keylen);
	ctx->keylen = keylen;

	return 0;

badkey:
	FUNC2(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
	return -EINVAL;
}