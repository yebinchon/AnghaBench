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
struct crypto_spawn {struct crypto_alg* alg; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct crypto_alg* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 struct crypto_alg* FUNC1 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct crypto_alg *FUNC5(struct crypto_spawn *spawn)
{
	struct crypto_alg *alg;
	struct crypto_alg *alg2;

	FUNC3(&crypto_alg_sem);
	alg = spawn->alg;
	alg2 = alg;
	if (alg2)
		alg2 = FUNC1(alg2);
	FUNC4(&crypto_alg_sem);

	if (!alg2) {
		if (alg)
			FUNC2(alg);
		return FUNC0(-EAGAIN);
	}

	return alg;
}