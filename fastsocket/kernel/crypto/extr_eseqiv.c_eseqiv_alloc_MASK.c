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
struct rtattr {int dummy; } ;
struct eseqiv_ctx {int dummy; } ;
struct TYPE_3__ {scalar_t__ ivsize; int /*<<< orphan*/  givencrypt; } ;
struct TYPE_4__ {scalar_t__ cra_blocksize; int cra_ctxsize; TYPE_1__ cra_ablkcipher; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; } ;
struct crypto_instance {TYPE_2__ alg; } ;

/* Variables and functions */
 int EINVAL ; 
 struct crypto_instance* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct crypto_instance*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  eseqiv_givencrypt_first ; 
 int /*<<< orphan*/  eseqiv_init ; 
 int /*<<< orphan*/  eseqiv_tmpl ; 
 struct crypto_instance* FUNC4 (int /*<<< orphan*/ *,struct rtattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skcipher_geniv_exit ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_instance*) ; 

__attribute__((used)) static struct crypto_instance *FUNC6(struct rtattr **tb)
{
	struct crypto_instance *inst;
	int err;

	err = FUNC2();
	if (err)
		return FUNC0(err);

	inst = FUNC4(&eseqiv_tmpl, tb, 0, 0);
	if (FUNC1(inst))
		goto put_rng;

	err = -EINVAL;
	if (inst->alg.cra_ablkcipher.ivsize != inst->alg.cra_blocksize)
		goto free_inst;

	inst->alg.cra_ablkcipher.givencrypt = eseqiv_givencrypt_first;

	inst->alg.cra_init = eseqiv_init;
	inst->alg.cra_exit = skcipher_geniv_exit;

	inst->alg.cra_ctxsize = sizeof(struct eseqiv_ctx);
	inst->alg.cra_ctxsize += inst->alg.cra_ablkcipher.ivsize;

out:
	return inst;

free_inst:
	FUNC5(inst);
	inst = FUNC0(err);
put_rng:
	FUNC3();
	goto out;
}