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
 int ABSY_ASSERTED ; 
 scalar_t__ REG_AUX_STATUS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 

__attribute__((used)) static int FUNC2(unsigned long iobase, unsigned int loop)
{
	while (FUNC0(iobase + REG_AUX_STATUS) & ABSY_ASSERTED) {
		FUNC1(1L);
		if (--loop == 0)
			return 1;
	}
	return 0;
}