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
 int BM_APBH_CHn_SEMA_PHORE ; 
 int BM_APBX_CHn_SEMA_PHORE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ HW_APBH_CHn_SEMA ; 
 scalar_t__ HW_APBX_CHn_SEMA ; 
 scalar_t__ REGS_APBH_BASE ; 
 scalar_t__ REGS_APBX_BASE ; 
#define  STMP3XXX_BUS_APBH 129 
#define  STMP3XXX_BUS_APBX 128 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int channel)
{
	switch (FUNC1(channel)) {
	case STMP3XXX_BUS_APBH:
		return (FUNC3(REGS_APBH_BASE + HW_APBH_CHn_SEMA +
			0x70 * FUNC2(channel))) &
			    BM_APBH_CHn_SEMA_PHORE;

	case STMP3XXX_BUS_APBX:
		return (FUNC3(REGS_APBX_BASE + HW_APBX_CHn_SEMA +
			0x70 * FUNC2(channel))) &
			    BM_APBX_CHn_SEMA_PHORE;
	default:
		FUNC0();
		return 0;
	}
}