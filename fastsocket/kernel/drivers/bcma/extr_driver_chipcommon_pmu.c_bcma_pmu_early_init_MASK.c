#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int rev; } ;
struct bcma_drv_cc {TYPE_2__ pmu; TYPE_1__* core; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_PMU_CAP ; 
 int BCMA_CC_PMU_CAP_REVISION ; 
 int FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 

void FUNC2(struct bcma_drv_cc *cc)
{
	u32 pmucap;

	pmucap = FUNC0(cc, BCMA_CC_PMU_CAP);
	cc->pmu.rev = (pmucap & BCMA_CC_PMU_CAP_REVISION);

	FUNC1(cc->core->bus, "Found rev %u PMU (capabilities 0x%08X)\n",
		   cc->pmu.rev, pmucap);
}