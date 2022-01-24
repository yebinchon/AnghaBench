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
typedef  int uint32_t ;
struct TYPE_2__ {int VPMClock; int /*<<< orphan*/  Spare1; } ;

/* Variables and functions */
 int MAX_PHASE_ADJUST_COUNT ; 
 int chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK ; 
 int chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT ; 
 int chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE ; 
 int /*<<< orphan*/  chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE ; 
 scalar_t__ chipcHw_REV_NUMBER_A0 ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* pChipcHw ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 

int FUNC8(void)
{

	if (FUNC0() == chipcHw_REV_NUMBER_A0) {
		return FUNC7();
	} else {
		uint32_t phaseControl = FUNC2();
		uint32_t phaseValue = 0;
		int adjustCount = 0;

		/* Disable VPM access */
		pChipcHw->Spare1 &= ~chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE;
		/* Disable HW VPM phase alignment  */
		FUNC3();
		/* Enable SW VPM phase alignment  */
		FUNC4();
		/* Adjust VPM phase */
		while (adjustCount < MAX_PHASE_ADJUST_COUNT) {
			phaseValue = FUNC1();

			/* Adjust phase control value */
			if (phaseValue > 0xF) {
				/* Increment phase control value */
				phaseControl++;
			} else if (phaseValue < 0xF) {
				/* Decrement phase control value */
				phaseControl--;
			} else {
				/* Enable VPM access */
				pChipcHw->Spare1 |= chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE;
				/* Return adjust count */
				return adjustCount;
			}
			/* Change the value of PH_CTRL. */
			FUNC5(&pChipcHw->VPMClock, (pChipcHw->VPMClock & (~chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_MASK)) | (phaseControl << chipcHw_REG_PLL_CLOCK_PHASE_CONTROL_SHIFT));
			/* Wait atleast 20 ns */
			FUNC6(1);
			/* Toggle the LOAD_CH after phase control is written. */
			pChipcHw->VPMClock ^= chipcHw_REG_PLL_CLOCK_PHASE_UPDATE_ENABLE;
			/* Count adjustment */
			adjustCount++;
		}
	}

	/* Disable VPM access */
	pChipcHw->Spare1 &= ~chipcHw_REG_SPARE1_VPM_BUS_ACCESS_ENABLE;
	return -1;
}