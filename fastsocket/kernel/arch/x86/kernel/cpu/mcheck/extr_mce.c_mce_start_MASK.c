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
typedef  int u64 ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  SPINUNIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  global_nwo ; 
 int /*<<< orphan*/  mce_callin ; 
 int /*<<< orphan*/  mce_executing ; 
 scalar_t__ FUNC4 (int*) ; 
 scalar_t__ monarch_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(int *no_way_out)
{
	int order;
	int cpus = FUNC6();
	u64 timeout = (u64)monarch_timeout * NSEC_PER_USEC;

	if (!timeout)
		return -1;

	FUNC0(*no_way_out, &global_nwo);
	/*
	 * global_nwo should be updated before mce_callin
	 */
	FUNC8();
	order = FUNC1(&mce_callin);

	/*
	 * Wait for everyone.
	 */
	while (FUNC2(&mce_callin) != cpus) {
		if (FUNC4(&timeout)) {
			FUNC3(&global_nwo, 0);
			return -1;
		}
		FUNC5(SPINUNIT);
	}

	/*
	 * mce_callin should be read before global_nwo
	 */
	FUNC7();

	if (order == 1) {
		/*
		 * Monarch: Starts executing now, the others wait.
		 */
		FUNC3(&mce_executing, 1);
	} else {
		/*
		 * Subject: Now start the scanning loop one by one in
		 * the original callin order.
		 * This way when there are any shared banks it will be
		 * only seen by one CPU before cleared, avoiding duplicates.
		 */
		while (FUNC2(&mce_executing) < order) {
			if (FUNC4(&timeout)) {
				FUNC3(&global_nwo, 0);
				return -1;
			}
			FUNC5(SPINUNIT);
		}
	}

	/*
	 * Cache the global no_way_out state.
	 */
	*no_way_out = FUNC2(&global_nwo);

	return order;
}