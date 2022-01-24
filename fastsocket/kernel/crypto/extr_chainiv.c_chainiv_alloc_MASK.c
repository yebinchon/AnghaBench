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
struct TYPE_3__ {scalar_t__ ivsize; int /*<<< orphan*/  givencrypt; } ;
struct TYPE_4__ {int cra_ctxsize; TYPE_1__ cra_ablkcipher; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; int /*<<< orphan*/  cra_flags; } ;
struct crypto_instance {TYPE_2__ alg; int /*<<< orphan*/  mask; int /*<<< orphan*/  type; } ;
struct crypto_attr_type {TYPE_2__ alg; int /*<<< orphan*/  mask; int /*<<< orphan*/  type; } ;
struct chainiv_ctx {int dummy; } ;
struct async_chainiv_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 struct crypto_instance* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct crypto_instance*) ; 
 int FUNC2 (struct crypto_instance*) ; 
 int /*<<< orphan*/  async_chainiv_exit ; 
 int /*<<< orphan*/  async_chainiv_givencrypt_first ; 
 int /*<<< orphan*/  async_chainiv_init ; 
 int /*<<< orphan*/  chainiv_givencrypt_first ; 
 int /*<<< orphan*/  chainiv_init ; 
 int /*<<< orphan*/  chainiv_tmpl ; 
 struct crypto_instance* FUNC3 (struct rtattr**) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_instance* FUNC7 (int /*<<< orphan*/ *,struct rtattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skcipher_geniv_exit ; 

__attribute__((used)) static struct crypto_instance *FUNC8(struct rtattr **tb)
{
	struct crypto_attr_type *algt;
	struct crypto_instance *inst;
	int err;

	algt = FUNC3(tb);
	err = FUNC2(algt);
	if (FUNC1(algt))
		return FUNC0(err);

	err = FUNC4();
	if (err)
		return FUNC0(err);

	inst = FUNC7(&chainiv_tmpl, tb, 0, 0);
	if (FUNC1(inst))
		goto put_rng;

	inst->alg.cra_ablkcipher.givencrypt = chainiv_givencrypt_first;

	inst->alg.cra_init = chainiv_init;
	inst->alg.cra_exit = skcipher_geniv_exit;

	inst->alg.cra_ctxsize = sizeof(struct chainiv_ctx);

	if (!FUNC6(algt->type, algt->mask)) {
		inst->alg.cra_flags |= CRYPTO_ALG_ASYNC;

		inst->alg.cra_ablkcipher.givencrypt =
			async_chainiv_givencrypt_first;

		inst->alg.cra_init = async_chainiv_init;
		inst->alg.cra_exit = async_chainiv_exit;

		inst->alg.cra_ctxsize = sizeof(struct async_chainiv_ctx);
	}

	inst->alg.cra_ctxsize += inst->alg.cra_ablkcipher.ivsize;

out:
	return inst;

put_rng:
	FUNC5();
	goto out;
}