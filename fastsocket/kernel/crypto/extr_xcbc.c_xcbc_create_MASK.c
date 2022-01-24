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
struct xcbc_tfm_ctx {int dummy; } ;
struct xcbc_desc_ctx {int dummy; } ;
struct TYPE_3__ {unsigned long cra_alignmask; int cra_blocksize; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; void* cra_ctxsize; int /*<<< orphan*/  cra_priority; } ;
struct TYPE_4__ {int digestsize; int /*<<< orphan*/  setkey; int /*<<< orphan*/  final; int /*<<< orphan*/  update; int /*<<< orphan*/  init; TYPE_1__ base; void* descsize; } ;
struct shash_instance {int cra_blocksize; int cra_alignmask; TYPE_2__ alg; int /*<<< orphan*/  cra_priority; } ;
struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_alg {int cra_blocksize; int cra_alignmask; TYPE_2__ alg; int /*<<< orphan*/  cra_priority; } ;

/* Variables and functions */
 void* FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_CIPHER ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_MASK ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_SHASH ; 
 scalar_t__ FUNC1 (struct shash_instance*) ; 
 int FUNC2 (struct shash_instance*) ; 
 int FUNC3 (struct rtattr**,int /*<<< orphan*/ ) ; 
 struct shash_instance* FUNC4 (struct rtattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct shash_instance*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct shash_instance*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  crypto_xcbc_digest_final ; 
 int /*<<< orphan*/  crypto_xcbc_digest_init ; 
 int /*<<< orphan*/  crypto_xcbc_digest_setkey ; 
 int /*<<< orphan*/  crypto_xcbc_digest_update ; 
 struct shash_instance* FUNC8 (char*,struct shash_instance*) ; 
 int /*<<< orphan*/  FUNC9 (struct shash_instance*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct shash_instance*) ; 
 int FUNC12 (struct crypto_template*,struct shash_instance*) ; 
 int /*<<< orphan*/  xcbc_exit_tfm ; 
 int /*<<< orphan*/  xcbc_init_tfm ; 

__attribute__((used)) static int FUNC13(struct crypto_template *tmpl, struct rtattr **tb)
{
	struct shash_instance *inst;
	struct crypto_alg *alg;
	unsigned long alignmask;
	int err;

	err = FUNC3(tb, CRYPTO_ALG_TYPE_SHASH);
	if (err)
		return err;

	alg = FUNC4(tb, CRYPTO_ALG_TYPE_CIPHER,
				  CRYPTO_ALG_TYPE_MASK);
	if (FUNC1(alg))
		return FUNC2(alg);

	switch(alg->cra_blocksize) {
	case 16:
		break;
	default:
		goto out_put_alg;
	}

	inst = FUNC8("xcbc", alg);
	err = FUNC2(inst);
	if (FUNC1(inst))
		goto out_put_alg;

	err = FUNC5(FUNC11(inst), alg,
				FUNC9(inst),
				CRYPTO_ALG_TYPE_MASK);
	if (err)
		goto out_free_inst;

	alignmask = alg->cra_alignmask | 3;
	inst->alg.base.cra_alignmask = alignmask;
	inst->alg.base.cra_priority = alg->cra_priority;
	inst->alg.base.cra_blocksize = alg->cra_blocksize;

	inst->alg.digestsize = alg->cra_blocksize;
	inst->alg.descsize = FUNC0(sizeof(struct xcbc_desc_ctx),
				   FUNC7()) +
			     (alignmask &
			      ~(FUNC7() - 1)) +
			     alg->cra_blocksize * 2;

	inst->alg.base.cra_ctxsize = FUNC0(sizeof(struct xcbc_tfm_ctx),
					   alignmask + 1) +
				     alg->cra_blocksize * 2;
	inst->alg.base.cra_init = xcbc_init_tfm;
	inst->alg.base.cra_exit = xcbc_exit_tfm;

	inst->alg.init = crypto_xcbc_digest_init;
	inst->alg.update = crypto_xcbc_digest_update;
	inst->alg.final = crypto_xcbc_digest_final;
	inst->alg.setkey = crypto_xcbc_digest_setkey;

	err = FUNC12(tmpl, inst);
	if (err) {
out_free_inst:
		FUNC10(FUNC9(inst));
	}

out_put_alg:
	FUNC6(alg);
	return err;
}