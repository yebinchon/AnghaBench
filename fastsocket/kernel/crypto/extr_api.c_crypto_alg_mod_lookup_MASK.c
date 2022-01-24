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
 int CRYPTO_ALG_TESTED ; 
 int /*<<< orphan*/  CRYPTO_MSG_ALG_REQUEST ; 
 int /*<<< orphan*/  ENOENT ; 
 struct crypto_alg* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct crypto_alg*) ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_alg*) ; 
 struct crypto_alg* FUNC4 (char const*,int,int) ; 
 struct crypto_alg* FUNC5 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_alg*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct crypto_alg*) ; 

struct crypto_alg *FUNC8(const char *name, u32 type, u32 mask)
{
	struct crypto_alg *alg;
	struct crypto_alg *larval;
	int ok;

	if (!((type | mask) & CRYPTO_ALG_TESTED)) {
		type |= CRYPTO_ALG_TESTED;
		mask |= CRYPTO_ALG_TESTED;
	}

	larval = FUNC4(name, type, mask);
	if (FUNC1(larval) || !FUNC2(larval))
		return larval;

	ok = FUNC7(CRYPTO_MSG_ALG_REQUEST, larval);

	if (ok == NOTIFY_STOP)
		alg = FUNC5(larval);
	else {
		FUNC6(larval);
		alg = FUNC0(-ENOENT);
	}
	FUNC3(larval);
	return alg;
}