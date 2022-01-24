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
typedef  void crypto_tfm ;
struct crypto_spawn {int /*<<< orphan*/  frontend; } ;
typedef  void crypto_alg ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (struct crypto_spawn*) ; 

void *FUNC5(struct crypto_spawn *spawn)
{
	struct crypto_alg *alg;
	struct crypto_tfm *tfm;

	alg = FUNC4(spawn);
	if (FUNC1(alg))
		return FUNC0(alg);

	tfm = FUNC2(alg, spawn->frontend);
	if (FUNC1(tfm))
		goto out_put_alg;

	return tfm;

out_put_alg:
	FUNC3(alg);
	return tfm;
}