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
struct rtattr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  setkey; int /*<<< orphan*/  max_keysize; int /*<<< orphan*/  min_keysize; int /*<<< orphan*/  ivsize; } ;
struct TYPE_6__ {int cra_ctxsize; TYPE_2__ cra_blkcipher; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; int /*<<< orphan*/  cra_type; int /*<<< orphan*/  cra_alignmask; int /*<<< orphan*/  cra_blocksize; int /*<<< orphan*/  cra_priority; int /*<<< orphan*/  cra_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_keysize; int /*<<< orphan*/  min_keysize; int /*<<< orphan*/  ivsize; } ;
struct crypto_instance {TYPE_3__ alg; TYPE_1__ cra_blkcipher; int /*<<< orphan*/  cra_type; int /*<<< orphan*/  cra_alignmask; int /*<<< orphan*/  cra_blocksize; int /*<<< orphan*/  cra_priority; int /*<<< orphan*/  cra_flags; } ;
struct crypto_fpu_ctx {int dummy; } ;
struct crypto_alg {TYPE_3__ alg; TYPE_1__ cra_blkcipher; int /*<<< orphan*/  cra_type; int /*<<< orphan*/  cra_alignmask; int /*<<< orphan*/  cra_blocksize; int /*<<< orphan*/  cra_priority; int /*<<< orphan*/  cra_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_BLKCIPHER ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_MASK ; 
 struct crypto_instance* FUNC0 (struct crypto_instance*) ; 
 struct crypto_instance* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct crypto_instance*) ; 
 struct crypto_instance* FUNC3 (char*,struct crypto_instance*) ; 
 int FUNC4 (struct rtattr**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypto_fpu_decrypt ; 
 int /*<<< orphan*/  crypto_fpu_encrypt ; 
 int /*<<< orphan*/  crypto_fpu_exit_tfm ; 
 int /*<<< orphan*/  crypto_fpu_init_tfm ; 
 int /*<<< orphan*/  crypto_fpu_setkey ; 
 struct crypto_instance* FUNC5 (struct rtattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_instance*) ; 

__attribute__((used)) static struct crypto_instance *FUNC7(struct rtattr **tb)
{
	struct crypto_instance *inst;
	struct crypto_alg *alg;
	int err;

	err = FUNC4(tb, CRYPTO_ALG_TYPE_BLKCIPHER);
	if (err)
		return FUNC1(err);

	alg = FUNC5(tb, CRYPTO_ALG_TYPE_BLKCIPHER,
				  CRYPTO_ALG_TYPE_MASK);
	if (FUNC2(alg))
		return FUNC0(alg);

	inst = FUNC3("fpu", alg);
	if (FUNC2(inst))
		goto out_put_alg;

	inst->alg.cra_flags = alg->cra_flags;
	inst->alg.cra_priority = alg->cra_priority;
	inst->alg.cra_blocksize = alg->cra_blocksize;
	inst->alg.cra_alignmask = alg->cra_alignmask;
	inst->alg.cra_type = alg->cra_type;
	inst->alg.cra_blkcipher.ivsize = alg->cra_blkcipher.ivsize;
	inst->alg.cra_blkcipher.min_keysize = alg->cra_blkcipher.min_keysize;
	inst->alg.cra_blkcipher.max_keysize = alg->cra_blkcipher.max_keysize;
	inst->alg.cra_ctxsize = sizeof(struct crypto_fpu_ctx);
	inst->alg.cra_init = crypto_fpu_init_tfm;
	inst->alg.cra_exit = crypto_fpu_exit_tfm;
	inst->alg.cra_blkcipher.setkey = crypto_fpu_setkey;
	inst->alg.cra_blkcipher.encrypt = crypto_fpu_encrypt;
	inst->alg.cra_blkcipher.decrypt = crypto_fpu_decrypt;

out_put_alg:
	FUNC6(alg);
	return inst;
}