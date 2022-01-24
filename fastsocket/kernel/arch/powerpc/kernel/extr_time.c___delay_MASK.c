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
 scalar_t__ FUNC2 () ; 
 unsigned long FUNC3 () ; 
 unsigned long FUNC4 () ; 

void FUNC5(unsigned long loops)
{
	unsigned long start;
	int diff;

	if (FUNC2()) {
		start = FUNC3();
		do {
			/* the RTCL register wraps at 1000000000 */
			diff = FUNC3() - start;
			if (diff < 0)
				diff += 1000000000;
		} while (diff < loops);
	} else {
		start = FUNC4();
		while (FUNC4() - start < loops)
			FUNC0();
		FUNC1();
	}
}