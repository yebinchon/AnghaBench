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
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_aead; } ;
struct crypto_instance {int dummy; } ;
struct crypto_aead_spawn {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cryptd_aead_request_ctx {int dummy; } ;
struct cryptd_aead_ctx {struct crypto_aead* child; } ;
struct aead_instance_ctx {struct crypto_aead_spawn aead_spawn; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 struct aead_instance_ctx* FUNC3 (struct crypto_instance*) ; 
 struct crypto_aead* FUNC4 (struct crypto_aead_spawn*) ; 
 struct crypto_instance* FUNC5 (struct crypto_tfm*) ; 
 struct cryptd_aead_ctx* FUNC6 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = FUNC5(tfm);
	struct aead_instance_ctx *ictx = FUNC3(inst);
	struct crypto_aead_spawn *spawn = &ictx->aead_spawn;
	struct cryptd_aead_ctx *ctx = FUNC6(tfm);
	struct crypto_aead *cipher;

	cipher = FUNC4(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	FUNC2(cipher, CRYPTO_TFM_REQ_MAY_SLEEP);
	ctx->child = cipher;
	tfm->crt_aead.reqsize = sizeof(struct cryptd_aead_request_ctx);
	return 0;
}