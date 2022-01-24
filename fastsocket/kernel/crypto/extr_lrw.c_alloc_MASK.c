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
struct priv {int dummy; } ;
struct TYPE_5__ {int ivsize; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  encrypt; int /*<<< orphan*/  setkey; scalar_t__ max_keysize; scalar_t__ min_keysize; } ;
struct TYPE_6__ {int cra_blocksize; int cra_alignmask; int cra_ctxsize; TYPE_2__ cra_blkcipher; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; int /*<<< orphan*/ * cra_type; int /*<<< orphan*/  cra_priority; int /*<<< orphan*/  cra_flags; } ;
struct TYPE_4__ {scalar_t__ cia_max_keysize; scalar_t__ cia_min_keysize; } ;
struct crypto_instance {int cra_blocksize; int cra_alignmask; TYPE_3__ alg; TYPE_1__ cra_cipher; int /*<<< orphan*/  cra_priority; } ;
struct crypto_alg {int cra_blocksize; int cra_alignmask; TYPE_3__ alg; TYPE_1__ cra_cipher; int /*<<< orphan*/  cra_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_BLKCIPHER ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_CIPHER ; 
 int /*<<< orphan*/  CRYPTO_ALG_TYPE_MASK ; 
 struct crypto_instance* FUNC0 (struct crypto_instance*) ; 
 struct crypto_instance* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct crypto_instance*) ; 
 struct crypto_instance* FUNC3 (char*,struct crypto_instance*) ; 
 int /*<<< orphan*/  crypto_blkcipher_type ; 
 int FUNC4 (struct rtattr**,int /*<<< orphan*/ ) ; 
 struct crypto_instance* FUNC5 (struct rtattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_instance*) ; 
 int /*<<< orphan*/  decrypt ; 
 int /*<<< orphan*/  encrypt ; 
 int /*<<< orphan*/  exit_tfm ; 
 int /*<<< orphan*/  init_tfm ; 
 int /*<<< orphan*/  setkey ; 

__attribute__((used)) static struct crypto_instance *FUNC7(struct rtattr **tb)
{
	struct crypto_instance *inst;
	struct crypto_alg *alg;
	int err;

	err = FUNC4(tb, CRYPTO_ALG_TYPE_BLKCIPHER);
	if (err)
		return FUNC1(err);

	alg = FUNC5(tb, CRYPTO_ALG_TYPE_CIPHER,
				  CRYPTO_ALG_TYPE_MASK);
	if (FUNC2(alg))
		return FUNC0(alg);

	inst = FUNC3("lrw", alg);
	if (FUNC2(inst))
		goto out_put_alg;

	inst->alg.cra_flags = CRYPTO_ALG_TYPE_BLKCIPHER;
	inst->alg.cra_priority = alg->cra_priority;
	inst->alg.cra_blocksize = alg->cra_blocksize;

	if (alg->cra_alignmask < 7) inst->alg.cra_alignmask = 7;
	else inst->alg.cra_alignmask = alg->cra_alignmask;
	inst->alg.cra_type = &crypto_blkcipher_type;

	if (!(alg->cra_blocksize % 4))
		inst->alg.cra_alignmask |= 3;
	inst->alg.cra_blkcipher.ivsize = alg->cra_blocksize;
	inst->alg.cra_blkcipher.min_keysize =
		alg->cra_cipher.cia_min_keysize + alg->cra_blocksize;
	inst->alg.cra_blkcipher.max_keysize =
		alg->cra_cipher.cia_max_keysize + alg->cra_blocksize;

	inst->alg.cra_ctxsize = sizeof(struct priv);

	inst->alg.cra_init = init_tfm;
	inst->alg.cra_exit = exit_tfm;

	inst->alg.cra_blkcipher.setkey = setkey;
	inst->alg.cra_blkcipher.encrypt = encrypt;
	inst->alg.cra_blkcipher.decrypt = decrypt;

out_put_alg:
	FUNC6(alg);
	return inst;
}