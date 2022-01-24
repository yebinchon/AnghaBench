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
typedef  int /*<<< orphan*/  ushort ;

/* Variables and functions */
 int DRQ_ASSERTED ; 
 unsigned int MAXLOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_STATUS ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 

__attribute__((used)) static int FUNC4(unsigned long iobase, ushort * start, ushort * end)
{
	unsigned int loop = MAXLOOP;
	ushort *p;

	for (p = start; p <= end; p++) {
		while (!(FUNC1(iobase + REG_STATUS) & DRQ_ASSERTED)) {
			FUNC3(1L);
			if (--loop == 0)
				return 1;
		}
		loop = MAXLOOP;
		*p = FUNC0(FUNC2(iobase));
	}

	return 0;
}