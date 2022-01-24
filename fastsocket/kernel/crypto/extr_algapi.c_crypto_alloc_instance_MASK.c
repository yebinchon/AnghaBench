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
struct crypto_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_ALG_TYPE_MASK ; 
 struct crypto_instance* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct crypto_instance*) ; 
 struct crypto_instance* FUNC2 (char const*,struct crypto_alg*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_spawn*,struct crypto_alg*,struct crypto_instance*,int) ; 
 struct crypto_spawn* FUNC4 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_instance*) ; 

struct crypto_instance *FUNC6(const char *name,
					      struct crypto_alg *alg)
{
	struct crypto_instance *inst;
	struct crypto_spawn *spawn;
	int err;

	inst = FUNC2(name, alg, 0);
	if (FUNC1(inst))
		goto out;

	spawn = FUNC4(inst);
	err = FUNC3(spawn, alg, inst,
				CRYPTO_ALG_TYPE_MASK | CRYPTO_ALG_ASYNC);

	if (err)
		goto err_free_inst;

	return inst;

err_free_inst:
	FUNC5(inst);
	inst = FUNC0(err);

out:
	return inst;
}