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
typedef  int u32 ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 int CRYPTO_ALG_DEAD ; 
 int CRYPTO_ALG_LARVAL ; 
 int CRYPTO_ALG_NEED_FALLBACK ; 
 int /*<<< orphan*/  ENOENT ; 
 struct crypto_alg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_alg* FUNC1 (char const*,int,int) ; 
 scalar_t__ FUNC2 (struct crypto_alg*) ; 
 struct crypto_alg* FUNC3 (char const*,int,int) ; 
 struct crypto_alg* FUNC4 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

struct crypto_alg *FUNC6(const char *name, u32 type, u32 mask)
{
	struct crypto_alg *alg;

	if (!name)
		return FUNC0(-ENOENT);

	mask &= ~(CRYPTO_ALG_LARVAL | CRYPTO_ALG_DEAD);
	type &= mask;

	alg = FUNC1(name, type, mask);
	if (!alg) {
		FUNC5("%s", name);

		if (!((type ^ CRYPTO_ALG_NEED_FALLBACK) & mask &
		      CRYPTO_ALG_NEED_FALLBACK))
			FUNC5("%s-all", name);

		alg = FUNC1(name, type, mask);
	}

	if (alg)
		return FUNC2(alg) ? FUNC4(alg) : alg;

	return FUNC3(name, type, mask);
}