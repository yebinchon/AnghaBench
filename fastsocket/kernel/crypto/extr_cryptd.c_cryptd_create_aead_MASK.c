#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  givdecrypt; int /*<<< orphan*/  givencrypt; int /*<<< orphan*/  maxauthsize; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  geniv; int /*<<< orphan*/  setauthsize; int /*<<< orphan*/  setkey; } ;
struct TYPE_5__ {int /*<<< orphan*/  givdecrypt; int /*<<< orphan*/  givencrypt; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  maxauthsize; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  geniv; int /*<<< orphan*/  setauthsize; int /*<<< orphan*/  setkey; } ;
struct TYPE_6__ {int cra_flags; int cra_ctxsize; TYPE_1__ cra_aead; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; int /*<<< orphan*/  cra_type; } ;
struct crypto_instance {TYPE_3__ cra_aead; TYPE_2__ alg; int /*<<< orphan*/  cra_type; } ;
struct crypto_alg {TYPE_3__ cra_aead; TYPE_2__ alg; int /*<<< orphan*/  cra_type; } ;
struct cryptd_queue {int dummy; } ;
struct cryptd_aead_ctx {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  base; } ;
struct aead_instance_ctx {TYPE_4__ aead_spawn; struct cryptd_queue* queue; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_ALG_TYPE_AEAD ; 
 int CRYPTO_ALG_TYPE_MASK ; 
 scalar_t__ FUNC0 (struct crypto_instance*) ; 
 int FUNC1 (struct crypto_instance*) ; 
 int /*<<< orphan*/  cryptd_aead_decrypt_enqueue ; 
 int /*<<< orphan*/  cryptd_aead_encrypt_enqueue ; 
 int /*<<< orphan*/  cryptd_aead_exit_tfm ; 
 int /*<<< orphan*/  cryptd_aead_init_tfm ; 
 struct crypto_instance* FUNC2 (struct crypto_instance*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct crypto_instance* FUNC4 (struct rtattr**,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct crypto_instance*,struct crypto_instance*,int) ; 
 struct aead_instance_ctx* FUNC6 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_instance*) ; 
 int FUNC8 (struct crypto_template*,struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_instance*) ; 

__attribute__((used)) static int FUNC10(struct crypto_template *tmpl,
		              struct rtattr **tb,
			      struct cryptd_queue *queue)
{
	struct aead_instance_ctx *ctx;
	struct crypto_instance *inst;
	struct crypto_alg *alg;
	int err;

	alg = FUNC4(tb, CRYPTO_ALG_TYPE_AEAD,
				CRYPTO_ALG_TYPE_MASK);
        if (FUNC0(alg))
		return FUNC1(alg);

	inst = FUNC2(alg, 0, sizeof(*ctx));
	err = FUNC1(inst);
	if (FUNC0(inst))
		goto out_put_alg;

	ctx = FUNC6(inst);
	ctx->queue = queue;

	err = FUNC5(&ctx->aead_spawn.base, alg, inst,
			CRYPTO_ALG_TYPE_MASK | CRYPTO_ALG_ASYNC);
	if (err)
		goto out_free_inst;

	inst->alg.cra_flags = CRYPTO_ALG_TYPE_AEAD | CRYPTO_ALG_ASYNC;
	inst->alg.cra_type = alg->cra_type;
	inst->alg.cra_ctxsize = sizeof(struct cryptd_aead_ctx);
	inst->alg.cra_init = cryptd_aead_init_tfm;
	inst->alg.cra_exit = cryptd_aead_exit_tfm;
	inst->alg.cra_aead.setkey      = alg->cra_aead.setkey;
	inst->alg.cra_aead.setauthsize = alg->cra_aead.setauthsize;
	inst->alg.cra_aead.geniv       = alg->cra_aead.geniv;
	inst->alg.cra_aead.ivsize      = alg->cra_aead.ivsize;
	inst->alg.cra_aead.maxauthsize = alg->cra_aead.maxauthsize;
	inst->alg.cra_aead.encrypt     = cryptd_aead_encrypt_enqueue;
	inst->alg.cra_aead.decrypt     = cryptd_aead_decrypt_enqueue;
	inst->alg.cra_aead.givencrypt  = alg->cra_aead.givencrypt;
	inst->alg.cra_aead.givdecrypt  = alg->cra_aead.givdecrypt;

	err = FUNC8(tmpl, inst);
	if (err) {
		FUNC3(&ctx->aead_spawn.base);
out_free_inst:
		FUNC9(inst);
	}
out_put_alg:
	FUNC7(alg);
	return err;
}