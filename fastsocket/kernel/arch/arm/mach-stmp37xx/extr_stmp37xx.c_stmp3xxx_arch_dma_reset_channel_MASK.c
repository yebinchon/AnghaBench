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
 unsigned int BP_APBH_CTRL0_RESET_CHANNEL ; 
 unsigned int BP_APBX_CTRL0_RESET_CHANNEL ; 
 scalar_t__ HW_APBH_CTRL0 ; 
 scalar_t__ HW_APBX_CTRL0 ; 
 scalar_t__ REGS_APBH_BASE ; 
 scalar_t__ REGS_APBX_BASE ; 
#define  STMP3XXX_BUS_APBH 129 
#define  STMP3XXX_BUS_APBX 128 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

void FUNC5(int channel)
{
	unsigned chbit = 1 << FUNC1(channel);

	switch (FUNC0(channel)) {
	case STMP3XXX_BUS_APBH:
		/* Reset channel and wait for it to complete */
		FUNC4(chbit << BP_APBH_CTRL0_RESET_CHANNEL,
			REGS_APBH_BASE + HW_APBH_CTRL0);
		while (FUNC2(REGS_APBH_BASE + HW_APBH_CTRL0) &
		       (chbit << BP_APBH_CTRL0_RESET_CHANNEL))
				FUNC3();
		break;

	case STMP3XXX_BUS_APBX:
		FUNC4(chbit << BP_APBX_CTRL0_RESET_CHANNEL,
			REGS_APBX_BASE + HW_APBX_CTRL0);
		while (FUNC2(REGS_APBX_BASE + HW_APBX_CTRL0) &
		       (chbit << BP_APBX_CTRL0_RESET_CHANNEL))
				FUNC3();
		break;
	}
}