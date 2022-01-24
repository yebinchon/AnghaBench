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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  inst; } ;
struct crypto_skcipher_spawn {TYPE_1__ base; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_alg*) ; 
 int FUNC1 (struct crypto_alg*) ; 
 int FUNC2 (TYPE_1__*,struct crypto_alg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_alg* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct crypto_skcipher_spawn *spawn, const char *name,
			 u32 type, u32 mask)
{
	struct crypto_alg *alg;
	int err;

	type = FUNC6(type);
	mask = FUNC5(mask);

	alg = FUNC3(name, type, mask);
	if (FUNC0(alg))
		return FUNC1(alg);

	err = FUNC2(&spawn->base, alg, spawn->base.inst, mask);
	FUNC4(alg);
	return err;
}