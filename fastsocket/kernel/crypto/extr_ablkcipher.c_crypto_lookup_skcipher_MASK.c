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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  ivsize; } ;
struct TYPE_3__ {int /*<<< orphan*/  ivsize; } ;
struct crypto_alg {int cra_flags; TYPE_2__ cra_ablkcipher; TYPE_1__ cra_blkcipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRYPTO_ALG_TESTED ; 
 int CRYPTO_ALG_TYPE_BLKCIPHER ; 
 int CRYPTO_ALG_TYPE_GIVCIPHER ; 
 int CRYPTO_ALG_TYPE_MASK ; 
 int /*<<< orphan*/  ENOENT ; 
 struct crypto_alg* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct crypto_alg*) ; 
 struct crypto_alg* FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_alg*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_alg*) ; 

__attribute__((used)) static struct crypto_alg *FUNC6(const char *name, u32 type,
						 u32 mask)
{
	struct crypto_alg *alg;

	alg = FUNC3(name, type, mask);
	if (FUNC2(alg))
		return alg;

	if ((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
	    CRYPTO_ALG_TYPE_GIVCIPHER)
		return alg;

	if (!((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
	      CRYPTO_ALG_TYPE_BLKCIPHER ? alg->cra_blkcipher.ivsize :
					  alg->cra_ablkcipher.ivsize))
		return alg;

	FUNC5(alg);
	alg = FUNC3(name, type | CRYPTO_ALG_TESTED,
				    mask & ~CRYPTO_ALG_TESTED);
	if (FUNC2(alg))
		return alg;

	if ((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
	    CRYPTO_ALG_TYPE_GIVCIPHER) {
		if ((alg->cra_flags ^ type ^ ~mask) & CRYPTO_ALG_TESTED) {
			FUNC5(alg);
			alg = FUNC1(-ENOENT);
		}
		return alg;
	}

	FUNC0(!((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
		 CRYPTO_ALG_TYPE_BLKCIPHER ? alg->cra_blkcipher.ivsize :
					     alg->cra_ablkcipher.ivsize));

	return FUNC1(FUNC4(alg, type, mask));
}