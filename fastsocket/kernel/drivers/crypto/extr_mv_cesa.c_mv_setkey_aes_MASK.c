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
struct mv_ctx {unsigned int key_len; int need_calc_aes_dkey; int /*<<< orphan*/  aes_enc_key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
#define  AES_KEYSIZE_128 130 
#define  AES_KEYSIZE_192 129 
#define  AES_KEYSIZE_256 128 
 int /*<<< orphan*/  AES_KEY_LEN ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC1 (struct crypto_ablkcipher*) ; 
 struct mv_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypto_ablkcipher *cipher, const u8 *key,
		unsigned int len)
{
	struct crypto_tfm *tfm = FUNC1(cipher);
	struct mv_ctx *ctx = FUNC2(tfm);

	switch (len) {
	case AES_KEYSIZE_128:
	case AES_KEYSIZE_192:
	case AES_KEYSIZE_256:
		break;
	default:
		FUNC0(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}
	ctx->key_len = len;
	ctx->need_calc_aes_dkey = 1;

	FUNC3(ctx->aes_enc_key, key, AES_KEY_LEN);
	return 0;
}