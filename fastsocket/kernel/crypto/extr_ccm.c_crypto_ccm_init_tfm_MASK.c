#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_aead; scalar_t__ __crt_alg; } ;
struct crypto_instance {int dummy; } ;
struct crypto_cipher {int dummy; } ;
struct crypto_ccm_req_priv_ctx {int dummy; } ;
struct crypto_ccm_ctx {struct crypto_cipher* ctr; struct crypto_cipher* cipher; } ;
typedef  struct crypto_cipher crypto_ablkcipher ;
struct ccm_instance_ctx {int /*<<< orphan*/  ctr; int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_cipher*) ; 
 int FUNC1 (struct crypto_cipher*) ; 
 scalar_t__ FUNC2 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_cipher*) ; 
 struct ccm_instance_ctx* FUNC4 (struct crypto_instance*) ; 
 struct crypto_cipher* FUNC5 (int /*<<< orphan*/ *) ; 
 struct crypto_cipher* FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (struct crypto_tfm*) ; 
 struct crypto_ccm_ctx* FUNC8 (struct crypto_tfm*) ; 
 int FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = (void *)tfm->__crt_alg;
	struct ccm_instance_ctx *ictx = FUNC4(inst);
	struct crypto_ccm_ctx *ctx = FUNC8(tfm);
	struct crypto_cipher *cipher;
	struct crypto_ablkcipher *ctr;
	unsigned long align;
	int err;

	cipher = FUNC5(&ictx->cipher);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctr = FUNC6(&ictx->ctr);
	err = FUNC1(ctr);
	if (FUNC0(ctr))
		goto err_free_cipher;

	ctx->cipher = cipher;
	ctx->ctr = ctr;

	align = FUNC7(tfm);
	align &= ~(FUNC9() - 1);
	tfm->crt_aead.reqsize = align +
				sizeof(struct crypto_ccm_req_priv_ctx) +
				FUNC2(ctr);

	return 0;

err_free_cipher:
	FUNC3(cipher);
	return err;
}