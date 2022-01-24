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
 int BP_APBH_CHn_SEMA_PHORE ; 
 int BP_APBX_CHn_SEMA_PHORE ; 
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
	int sem = -1;

	switch (FUNC1(channel)) {
	case STMP3XXX_BUS_APBH:
		sem = FUNC3(REGS_APBH_BASE + HW_APBH_CHn_SEMA +
				FUNC2(channel) * 0x70);
		sem &= BM_APBH_CHn_SEMA_PHORE;
		sem >>= BP_APBH_CHn_SEMA_PHORE;
		break;

	case STMP3XXX_BUS_APBX:
		sem = FUNC3(REGS_APBX_BASE + HW_APBX_CHn_SEMA +
				FUNC2(channel) * 0x70);
		sem &= BM_APBX_CHn_SEMA_PHORE;
		sem >>= BP_APBX_CHn_SEMA_PHORE;
		break;
	default:
		FUNC0();
	}
	return sem;
}