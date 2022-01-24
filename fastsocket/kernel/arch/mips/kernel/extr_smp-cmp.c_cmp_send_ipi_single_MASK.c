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
#define  SMP_CALL_FUNCTION 129 
#define  SMP_RESCHEDULE_YOURSELF 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(int cpu, unsigned int action)
{
	unsigned long flags;

	FUNC3(flags);

	switch (action) {
	case SMP_CALL_FUNCTION:
		FUNC0(cpu);
		break;

	case SMP_RESCHEDULE_YOURSELF:
		FUNC1(cpu);
		break;
	}

	FUNC2(flags);
}