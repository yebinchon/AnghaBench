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
struct TYPE_2__ {int /*<<< orphan*/  ivsize; } ;
struct crypto_alg {int cra_flags; TYPE_1__ cra_aead; int /*<<< orphan*/ * cra_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CRYPTO_ALG_TESTED ; 
 int /*<<< orphan*/  ENOENT ; 
 struct crypto_alg* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct crypto_alg*) ; 
 int /*<<< orphan*/  crypto_aead_type ; 
 struct crypto_alg* FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_alg*,int,int) ; 

__attribute__((used)) static struct crypto_alg *FUNC6(const char *name, u32 type,
					     u32 mask)
{
	struct crypto_alg *alg;

	alg = FUNC3(name, type, mask);
	if (FUNC2(alg))
		return alg;

	if (alg->cra_type == &crypto_aead_type)
		return alg;

	if (!alg->cra_aead.ivsize)
		return alg;

	FUNC4(alg);
	alg = FUNC3(name, type | CRYPTO_ALG_TESTED,
				    mask & ~CRYPTO_ALG_TESTED);
	if (FUNC2(alg))
		return alg;

	if (alg->cra_type == &crypto_aead_type) {
		if ((alg->cra_flags ^ type ^ ~mask) & CRYPTO_ALG_TESTED) {
			FUNC4(alg);
			alg = FUNC1(-ENOENT);
		}
		return alg;
	}

	FUNC0(!alg->cra_aead.ivsize);

	return FUNC1(FUNC5(alg, type, mask));
}