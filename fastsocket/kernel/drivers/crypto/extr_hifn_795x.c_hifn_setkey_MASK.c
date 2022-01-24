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
typedef  int /*<<< orphan*/  u32 ;
struct hifn_device {int /*<<< orphan*/  flags; } ;
struct hifn_context {unsigned int keysize; int /*<<< orphan*/  key; struct hifn_device* dev; } ;
struct crypto_tfm {int crt_flags; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_WEAK_KEY ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_WEAK_KEY ; 
 int DES_EXPKEY_WORDS ; 
 int EINVAL ; 
 unsigned int HIFN_DES_KEY_LENGTH ; 
 int /*<<< orphan*/  HIFN_FLAG_OLD_KEY ; 
 unsigned int HIFN_MAX_CRYPT_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC1 (struct crypto_ablkcipher*) ; 
 struct hifn_context* FUNC2 (struct crypto_tfm*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct crypto_ablkcipher *cipher, const u8 *key,
		unsigned int len)
{
	struct crypto_tfm *tfm = FUNC1(cipher);
	struct hifn_context *ctx = FUNC2(tfm);
	struct hifn_device *dev = ctx->dev;

	if (len > HIFN_MAX_CRYPT_KEY_LENGTH) {
		FUNC0(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -1;
	}

	if (len == HIFN_DES_KEY_LENGTH) {
		u32 tmp[DES_EXPKEY_WORDS];
		int ret = FUNC3(tmp, key);
		
		if (FUNC5(ret == 0) && (tfm->crt_flags & CRYPTO_TFM_REQ_WEAK_KEY)) {
			tfm->crt_flags |= CRYPTO_TFM_RES_WEAK_KEY;
			return -EINVAL;
		}
	}

	dev->flags &= ~HIFN_FLAG_OLD_KEY;

	FUNC4(ctx->key, key, len);
	ctx->keysize = len;

	return 0;
}