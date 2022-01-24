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
 scalar_t__ HW_APBH_CTRL1 ; 
 scalar_t__ HW_APBX_CTRL1 ; 
 scalar_t__ REGS_APBH_BASE ; 
 scalar_t__ REGS_APBX_BASE ; 
#define  STMP3XXX_BUS_APBH 129 
#define  STMP3XXX_BUS_APBX 128 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 

int FUNC3(int channel)
{
	int r = 0;

	switch (FUNC0(channel)) {
	case STMP3XXX_BUS_APBH:
		r = FUNC2(REGS_APBH_BASE + HW_APBH_CTRL1) &
			(1 << FUNC1(channel));
		break;

	case STMP3XXX_BUS_APBX:
		r = FUNC2(REGS_APBX_BASE + HW_APBX_CTRL1) &
			(1 << FUNC1(channel));
		break;
	}
	return r;
}