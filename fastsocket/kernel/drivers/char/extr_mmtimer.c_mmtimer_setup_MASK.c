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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 unsigned long FUNC4 () ; 

__attribute__((used)) static int FUNC5(int cpu, int comparator, unsigned long expires)
{

	switch (comparator) {
	case 0:
		FUNC1(cpu, expires);
		break;
	case 1:
		FUNC2(cpu, expires);
		break;
	case 2:
		FUNC3(cpu, expires);
		break;
	}
	/* We might've missed our expiration time */
	if (FUNC4() <= expires)
		return 1;

	/*
	 * If an interrupt is already pending then its okay
	 * if not then we failed
	 */
	return FUNC0(comparator);
}