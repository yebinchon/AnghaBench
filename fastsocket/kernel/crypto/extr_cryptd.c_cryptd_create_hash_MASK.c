#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cra_ctxsize; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; int /*<<< orphan*/  cra_flags; } ;
struct TYPE_5__ {TYPE_1__ base; int /*<<< orphan*/  digestsize; } ;
struct TYPE_6__ {int /*<<< orphan*/  digest; int /*<<< orphan*/  setkey; int /*<<< orphan*/  import; int /*<<< orphan*/  export; int /*<<< orphan*/  finup; int /*<<< orphan*/  final; int /*<<< orphan*/  update; int /*<<< orphan*/  init; TYPE_2__ halg; } ;
struct crypto_alg {int dummy; } ;
struct shash_alg {TYPE_3__ alg; int /*<<< orphan*/  digestsize; struct crypto_alg base; } ;
struct rtattr {int dummy; } ;
struct hashd_instance_ctx {int /*<<< orphan*/  spawn; struct cryptd_queue* queue; } ;
struct crypto_template {int dummy; } ;
struct cryptd_queue {int dummy; } ;
struct cryptd_hash_ctx {int dummy; } ;
struct ahash_instance {TYPE_3__ alg; int /*<<< orphan*/  digestsize; struct crypto_alg base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 scalar_t__ FUNC0 (struct shash_alg*) ; 
 int FUNC1 (struct shash_alg*) ; 
 int /*<<< orphan*/  FUNC2 (struct shash_alg*) ; 
 struct hashd_instance_ctx* FUNC3 (struct shash_alg*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct crypto_template*,struct shash_alg*) ; 
 struct shash_alg* FUNC6 (struct crypto_alg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cryptd_hash_digest_enqueue ; 
 int /*<<< orphan*/  cryptd_hash_exit_tfm ; 
 int /*<<< orphan*/  cryptd_hash_export ; 
 int /*<<< orphan*/  cryptd_hash_final_enqueue ; 
 int /*<<< orphan*/  cryptd_hash_finup_enqueue ; 
 int /*<<< orphan*/  cryptd_hash_import ; 
 int /*<<< orphan*/  cryptd_hash_init_enqueue ; 
 int /*<<< orphan*/  cryptd_hash_init_tfm ; 
 int /*<<< orphan*/  cryptd_hash_setkey ; 
 int /*<<< orphan*/  cryptd_hash_update_enqueue ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct shash_alg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC10 (struct shash_alg*) ; 
 struct shash_alg* FUNC11 (struct rtattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct crypto_template *tmpl, struct rtattr **tb,
			      struct cryptd_queue *queue)
{
	struct hashd_instance_ctx *ctx;
	struct ahash_instance *inst;
	struct shash_alg *salg;
	struct crypto_alg *alg;
	int err;

	salg = FUNC11(tb[1], 0, 0);
	if (FUNC0(salg))
		return FUNC1(salg);

	alg = &salg->base;
	inst = FUNC6(alg, FUNC4(),
				     sizeof(*ctx));
	err = FUNC1(inst);
	if (FUNC0(inst))
		goto out_put_alg;

	ctx = FUNC3(inst);
	ctx->queue = queue;

	err = FUNC8(&ctx->spawn, salg,
				      FUNC2(inst));
	if (err)
		goto out_free_inst;

	inst->alg.halg.base.cra_flags = CRYPTO_ALG_ASYNC;

	inst->alg.halg.digestsize = salg->digestsize;
	inst->alg.halg.base.cra_ctxsize = sizeof(struct cryptd_hash_ctx);

	inst->alg.halg.base.cra_init = cryptd_hash_init_tfm;
	inst->alg.halg.base.cra_exit = cryptd_hash_exit_tfm;

	inst->alg.init   = cryptd_hash_init_enqueue;
	inst->alg.update = cryptd_hash_update_enqueue;
	inst->alg.final  = cryptd_hash_final_enqueue;
	inst->alg.finup  = cryptd_hash_finup_enqueue;
	inst->alg.export = cryptd_hash_export;
	inst->alg.import = cryptd_hash_import;
	inst->alg.setkey = cryptd_hash_setkey;
	inst->alg.digest = cryptd_hash_digest_enqueue;

	err = FUNC5(tmpl, inst);
	if (err) {
		FUNC7(&ctx->spawn);
out_free_inst:
		FUNC10(inst);
	}

out_put_alg:
	FUNC9(alg);
	return err;
}