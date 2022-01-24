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
 int /*<<< orphan*/  IOC_IRQREQA ; 
 int /*<<< orphan*/  IOC_T0CNTH ; 
 int /*<<< orphan*/  IOC_T0CNTL ; 
 int /*<<< orphan*/  IOC_T0LATCH ; 
 long LATCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tick_nsec ; 

unsigned long FUNC3(void)
{
	unsigned int count1, count2, status;
	long offset;

	FUNC2 (0, IOC_T0LATCH);
	FUNC0 ();
	count1 = FUNC1(IOC_T0CNTL) | (FUNC1(IOC_T0CNTH) << 8);
	FUNC0 ();
	status = FUNC1(IOC_IRQREQA);
	FUNC0 ();
	FUNC2 (0, IOC_T0LATCH);
	FUNC0 ();
	count2 = FUNC1(IOC_T0CNTL) | (FUNC1(IOC_T0CNTH) << 8);

	offset = count2;
	if (count2 < count1) {
		/*
		 * We have not had an interrupt between reading count1
		 * and count2.
		 */
		if (status & (1 << 5))
			offset -= LATCH;
	} else if (count2 > count1) {
		/*
		 * We have just had another interrupt between reading
		 * count1 and count2.
		 */
		offset -= LATCH;
	}

	offset = (LATCH - offset) * (tick_nsec / 1000);
	return (offset + LATCH/2) / LATCH;
}