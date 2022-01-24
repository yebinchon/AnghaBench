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
struct crypto_cipher {int dummy; } ;
struct crypto_ccm_ctx {struct crypto_cipher* cipher; struct crypto_ablkcipher* ctr; } ;
struct crypto_aead {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*,int) ; 
 int FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ablkcipher*,int) ; 
 int FUNC3 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct crypto_ccm_ctx* FUNC4 (struct crypto_aead*) ; 
 int FUNC5 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_aead*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_cipher*,int) ; 
 int FUNC8 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_cipher*,int) ; 
 int FUNC10 (struct crypto_cipher*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct crypto_aead *aead, const u8 *key,
			     unsigned int keylen)
{
	struct crypto_ccm_ctx *ctx = FUNC4(aead);
	struct crypto_ablkcipher *ctr = ctx->ctr;
	struct crypto_cipher *tfm = ctx->cipher;
	int err = 0;

	FUNC0(ctr, CRYPTO_TFM_REQ_MASK);
	FUNC2(ctr, FUNC5(aead) &
				    CRYPTO_TFM_REQ_MASK);
	err = FUNC3(ctr, key, keylen);
	FUNC6(aead, FUNC1(ctr) &
			      CRYPTO_TFM_RES_MASK);
	if (err)
		goto out;

	FUNC7(tfm, CRYPTO_TFM_REQ_MASK);
	FUNC9(tfm, FUNC5(aead) &
				    CRYPTO_TFM_REQ_MASK);
	err = FUNC10(tfm, key, keylen);
	FUNC6(aead, FUNC8(tfm) &
			      CRYPTO_TFM_RES_MASK);

out:
	return err;
}