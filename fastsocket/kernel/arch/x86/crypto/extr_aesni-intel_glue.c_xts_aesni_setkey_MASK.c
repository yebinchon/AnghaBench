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
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;
struct aesni_xts_ctx {int /*<<< orphan*/  raw_tweak_ctx; int /*<<< orphan*/  raw_crypt_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int FUNC0 (struct crypto_tfm*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct aesni_xts_ctx* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm, const u8 *key,
			    unsigned int keylen)
{
	struct aesni_xts_ctx *ctx = FUNC1(tfm);
	u32 *flags = &tfm->crt_flags;
	int err;

	/* key consists of keys of equal size concatenated, therefore
	 * the length must be even
	 */
	if (keylen % 2) {
		*flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}

	/* first half of xts-key is for crypt */
	err = FUNC0(tfm, ctx->raw_crypt_ctx, key, keylen / 2);
	if (err)
		return err;

	/* second half of xts-key is for tweak */
	return FUNC0(tfm, ctx->raw_tweak_ctx, key + keylen / 2,
				  keylen / 2);
}