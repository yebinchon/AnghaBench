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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
	int i;

	/* Yield CPU */
	if (!FUNC1()) {
		/*
		 * Wait about 200ms before retrying again.
		 * This controls the number of retries for single
		 * lock operation.
		 */
		FUNC2(100);
		FUNC3();
	} else {
		for (i = 0; i < 20; i++)
			FUNC0(); /* This a nop instr on i386 */
	}
}