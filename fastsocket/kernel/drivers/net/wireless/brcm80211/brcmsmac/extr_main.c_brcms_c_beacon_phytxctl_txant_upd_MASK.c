#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct brcms_c_info {int /*<<< orphan*/  hw; int /*<<< orphan*/  band; TYPE_1__* stf; } ;
struct TYPE_2__ {int phytxant; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_BCN_PCTLWD ; 
 int PHY_TXC_ANT_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct brcms_c_info*,int /*<<< orphan*/ ) ; 

void FUNC4(struct brcms_c_info *wlc,
				       u32 bcn_rspec)
{
	u16 phyctl;
	u16 phytxant = wlc->stf->phytxant;
	u16 mask = PHY_TXC_ANT_MASK;

	/* for non-siso rates or default setting, use the available chains */
	if (FUNC0(wlc->band))
		phytxant = FUNC3(wlc, bcn_rspec);

	phyctl = FUNC1(wlc->hw, M_BCN_PCTLWD);
	phyctl = (phyctl & ~mask) | phytxant;
	FUNC2(wlc->hw, M_BCN_PCTLWD, phyctl);
}