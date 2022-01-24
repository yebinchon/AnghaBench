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
typedef  int u32 ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct cryptd_ablkcipher {int dummy; } ;
struct TYPE_2__ {scalar_t__ cra_module; } ;

/* Variables and functions */
 int CRYPTO_ALG_GENIV ; 
 int CRYPTO_ALG_TYPE_BLKCIPHER ; 
 int CRYPTO_ALG_TYPE_BLKCIPHER_MASK ; 
 int CRYPTO_ALG_TYPE_MASK ; 
 int CRYPTO_MAX_ALG_NAME ; 
 int /*<<< orphan*/  EINVAL ; 
 struct cryptd_ablkcipher* FUNC0 (struct crypto_tfm*) ; 
 struct cryptd_ablkcipher* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct crypto_tfm*) ; 
 scalar_t__ THIS_MODULE ; 
 struct cryptd_ablkcipher* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_tfm*) ; 
 int FUNC7 (char*,int,char*,char const*) ; 

struct cryptd_ablkcipher *FUNC8(const char *alg_name,
						  u32 type, u32 mask)
{
	char cryptd_alg_name[CRYPTO_MAX_ALG_NAME];
	struct crypto_tfm *tfm;

	if (FUNC7(cryptd_alg_name, CRYPTO_MAX_ALG_NAME,
		     "cryptd(%s)", alg_name) >= CRYPTO_MAX_ALG_NAME)
		return FUNC1(-EINVAL);
	type &= ~(CRYPTO_ALG_TYPE_MASK | CRYPTO_ALG_GENIV);
	type |= CRYPTO_ALG_TYPE_BLKCIPHER;
	mask &= ~CRYPTO_ALG_TYPE_MASK;
	mask |= (CRYPTO_ALG_GENIV | CRYPTO_ALG_TYPE_BLKCIPHER_MASK);
	tfm = FUNC5(cryptd_alg_name, type, mask);
	if (FUNC2(tfm))
		return FUNC0(tfm);
	if (tfm->__crt_alg->cra_module != THIS_MODULE) {
		FUNC6(tfm);
		return FUNC1(-EINVAL);
	}

	return FUNC3(FUNC4(tfm));
}