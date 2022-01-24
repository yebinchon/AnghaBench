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
struct ib_fmr_pool {int /*<<< orphan*/  req_ser; int /*<<< orphan*/  flush_ser; int /*<<< orphan*/  flush_arg; int /*<<< orphan*/  (* flush_function ) (struct ib_fmr_pool*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  force_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_fmr_pool*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_fmr_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void *pool_ptr)
{
	struct ib_fmr_pool *pool = pool_ptr;

	do {
		if (FUNC2(&pool->flush_ser) - FUNC2(&pool->req_ser) < 0) {
			FUNC3(pool);

			FUNC1(&pool->flush_ser);
			FUNC8(&pool->force_wait);

			if (pool->flush_function)
				pool->flush_function(pool, pool->flush_arg);
		}

		FUNC6(TASK_INTERRUPTIBLE);
		if (FUNC2(&pool->flush_ser) - FUNC2(&pool->req_ser) >= 0 &&
		    !FUNC4())
			FUNC5();
		FUNC0(TASK_RUNNING);
	} while (!FUNC4());

	return 0;
}