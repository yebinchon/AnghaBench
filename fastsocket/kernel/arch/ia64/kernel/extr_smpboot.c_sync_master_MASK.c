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

/* Variables and functions */
 size_t MASTER ; 
 unsigned long NUM_ITERS ; 
 unsigned long NUM_ROUNDS ; 
 size_t SLAVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* go ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void
FUNC4 (void *arg)
{
	unsigned long flags, i;

	go[MASTER] = 0;

	FUNC3(flags);
	{
		for (i = 0; i < NUM_ROUNDS*NUM_ITERS; ++i) {
			while (!go[MASTER])
				FUNC0();
			go[MASTER] = 0;
			go[SLAVE] = FUNC1();
		}
	}
	FUNC2(flags);
}