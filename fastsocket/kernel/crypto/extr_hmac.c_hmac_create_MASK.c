#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cra_blocksize; int cra_ctxsize; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; scalar_t__ cra_alignmask; int /*<<< orphan*/  cra_priority; } ;
struct TYPE_4__ {int digestsize; int statesize; int /*<<< orphan*/  setkey; int /*<<< orphan*/  import; int /*<<< orphan*/  export; int /*<<< orphan*/  finup; int /*<<< orphan*/  final; int /*<<< orphan*/  update; int /*<<< orphan*/  init; TYPE_1__ base; } ;
struct crypto_alg {int cra_blocksize; scalar_t__ cra_alignmask; int /*<<< orphan*/  cra_priority; } ;
struct shash_instance {int digestsize; int statesize; TYPE_2__ alg; struct crypto_alg base; } ;
struct shash_alg {int digestsize; int statesize; TYPE_2__ alg; struct crypto_alg base; } ;
struct rtattr {int dummy; } ;
struct hmac_ctx {int dummy; } ;
struct crypto_template {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_SHASH ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct shash_instance*) ; 
 int FUNC2 (struct shash_instance*) ; 
 int FUNC3 (struct rtattr**,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct shash_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_alg*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  hmac_exit_tfm ; 
 int /*<<< orphan*/  hmac_export ; 
 int /*<<< orphan*/  hmac_final ; 
 int /*<<< orphan*/  hmac_finup ; 
 int /*<<< orphan*/  hmac_import ; 
 int /*<<< orphan*/  hmac_init ; 
 int /*<<< orphan*/  hmac_init_tfm ; 
 int /*<<< orphan*/  hmac_setkey ; 
 int /*<<< orphan*/  hmac_update ; 
 struct shash_instance* FUNC7 (char*,struct crypto_alg*) ; 
 struct shash_instance* FUNC8 (struct rtattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct shash_instance*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct shash_instance*) ; 
 int FUNC12 (struct crypto_template*,struct shash_instance*) ; 

__attribute__((used)) static int FUNC13(struct crypto_template *tmpl, struct rtattr **tb)
{
	struct shash_instance *inst;
	struct crypto_alg *alg;
	struct shash_alg *salg;
	int err;
	int ds;
	int ss;

	err = FUNC3(tb, CRYPTO_ALG_TYPE_SHASH);
	if (err)
		return err;

	salg = FUNC8(tb[1], 0, 0);
	if (FUNC1(salg))
		return FUNC2(salg);

	err = -EINVAL;
	ds = salg->digestsize;
	ss = salg->statesize;
	alg = &salg->base;
	if (ds > alg->cra_blocksize ||
	    ss < alg->cra_blocksize)
		goto out_put_alg;

	inst = FUNC7("hmac", alg);
	err = FUNC2(inst);
	if (FUNC1(inst))
		goto out_put_alg;

	err = FUNC4(FUNC11(inst), salg,
				      FUNC9(inst));
	if (err)
		goto out_free_inst;

	inst->alg.base.cra_priority = alg->cra_priority;
	inst->alg.base.cra_blocksize = alg->cra_blocksize;
	inst->alg.base.cra_alignmask = alg->cra_alignmask;

	ss = FUNC0(ss, alg->cra_alignmask + 1);
	inst->alg.digestsize = ds;
	inst->alg.statesize = ss;

	inst->alg.base.cra_ctxsize = sizeof(struct hmac_ctx) +
				     FUNC0(ss * 2, FUNC6());

	inst->alg.base.cra_init = hmac_init_tfm;
	inst->alg.base.cra_exit = hmac_exit_tfm;

	inst->alg.init = hmac_init;
	inst->alg.update = hmac_update;
	inst->alg.final = hmac_final;
	inst->alg.finup = hmac_finup;
	inst->alg.export = hmac_export;
	inst->alg.import = hmac_import;
	inst->alg.setkey = hmac_setkey;

	err = FUNC12(tmpl, inst);
	if (err) {
out_free_inst:
		FUNC10(FUNC9(inst));
	}

out_put_alg:
	FUNC5(alg);
	return err;
}