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
struct crypto_larval {int dummy; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_larval*) ; 
 int FUNC1 (struct crypto_larval*) ; 
 struct crypto_larval* FUNC2 (struct crypto_alg*) ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 int FUNC3 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_larval*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct crypto_alg *alg)
{
	struct crypto_larval *larval;
	int err;

	err = FUNC3(alg);
	if (err)
		return err;

	FUNC5(&crypto_alg_sem);
	larval = FUNC2(alg);
	FUNC6(&crypto_alg_sem);

	if (FUNC0(larval))
		return FUNC1(larval);

	FUNC4(larval);
	return 0;
}