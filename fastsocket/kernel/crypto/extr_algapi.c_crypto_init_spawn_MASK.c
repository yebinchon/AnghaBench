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
struct crypto_spawn {struct crypto_alg* alg; int /*<<< orphan*/  list; int /*<<< orphan*/  mask; struct crypto_instance* inst; } ;
struct crypto_instance {int dummy; } ;
struct crypto_alg {int /*<<< orphan*/  cra_users; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct crypto_spawn *spawn, struct crypto_alg *alg,
		      struct crypto_instance *inst, u32 mask)
{
	int err = -EAGAIN;

	spawn->inst = inst;
	spawn->mask = mask;

	FUNC1(&crypto_alg_sem);
	if (!FUNC0(alg)) {
		FUNC2(&spawn->list, &alg->cra_users);
		spawn->alg = alg;
		err = 0;
	}
	FUNC3(&crypto_alg_sem);

	return err;
}