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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_alg {int /*<<< orphan*/  cra_list; int /*<<< orphan*/  cra_refcnt; } ;
struct crypto_larval {struct crypto_alg alg; } ;

/* Variables and functions */
 struct crypto_alg* FUNC0 (struct crypto_larval*) ; 
 scalar_t__ FUNC1 (struct crypto_larval*) ; 
 struct crypto_alg* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  crypto_alg_list ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 scalar_t__ FUNC4 (struct crypto_alg*) ; 
 struct crypto_larval* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_alg* FUNC6 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_larval*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct crypto_alg *FUNC11(const char *name, u32 type,
					    u32 mask)
{
	struct crypto_alg *alg;
	struct crypto_larval *larval;

	larval = FUNC5(name, type, mask);
	if (FUNC1(larval))
		return FUNC0(larval);

	FUNC3(&larval->alg.cra_refcnt, 2);

	FUNC7(&crypto_alg_sem);
	alg = FUNC2(name, type, mask);
	if (!alg) {
		alg = &larval->alg;
		FUNC9(&alg->cra_list, &crypto_alg_list);
	}
	FUNC10(&crypto_alg_sem);

	if (alg != &larval->alg) {
		FUNC8(larval);
		if (FUNC4(alg))
			alg = FUNC6(alg);
	}

	return alg;
}