#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct shash_desc {struct crypto_shash* tfm; } ;
struct shash_alg {int /*<<< orphan*/  digestsize; } ;
struct hash_tfm {int /*<<< orphan*/  digestsize; int /*<<< orphan*/  setkey; int /*<<< orphan*/  digest; int /*<<< orphan*/  final; int /*<<< orphan*/  update; int /*<<< orphan*/  init; } ;
struct crypto_tfm {int /*<<< orphan*/  exit; struct crypto_alg* __crt_alg; struct hash_tfm crt_hash; } ;
struct crypto_shash {int dummy; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct shash_alg* FUNC2 (struct crypto_alg*) ; 
 struct crypto_shash* FUNC3 (struct crypto_alg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  crypto_exit_shash_ops_compat ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_alg*) ; 
 scalar_t__ FUNC7 (struct crypto_shash*) ; 
 int /*<<< orphan*/  crypto_shash_type ; 
 struct shash_desc** FUNC8 (struct crypto_tfm*) ; 
 struct shash_desc* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shash_compat_digest ; 
 int /*<<< orphan*/  shash_compat_final ; 
 int /*<<< orphan*/  shash_compat_init ; 
 int /*<<< orphan*/  shash_compat_setkey ; 
 int /*<<< orphan*/  shash_compat_update ; 

__attribute__((used)) static int FUNC10(struct crypto_tfm *tfm)
{
	struct hash_tfm *crt = &tfm->crt_hash;
	struct crypto_alg *calg = tfm->__crt_alg;
	struct shash_alg *alg = FUNC2(calg);
	struct shash_desc **descp = FUNC8(tfm);
	struct crypto_shash *shash;
	struct shash_desc *desc;

	if (!FUNC5(calg))
		return -EAGAIN;

	shash = FUNC3(calg, &crypto_shash_type);
	if (FUNC0(shash)) {
		FUNC6(calg);
		return FUNC1(shash);
	}

	desc = FUNC9(sizeof(*desc) + FUNC7(shash),
		       GFP_KERNEL);
	if (!desc) {
		FUNC4(shash);
		return -ENOMEM;
	}

	*descp = desc;
	desc->tfm = shash;
	tfm->exit = crypto_exit_shash_ops_compat;

	crt->init = shash_compat_init;
	crt->update = shash_compat_update;
	crt->final  = shash_compat_final;
	crt->digest = shash_compat_digest;
	crt->setkey = shash_compat_setkey;

	crt->digestsize = alg->digestsize;

	return 0;
}