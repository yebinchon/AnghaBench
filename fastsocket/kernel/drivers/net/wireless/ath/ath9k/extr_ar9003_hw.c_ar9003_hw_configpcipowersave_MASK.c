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
struct ar5416IniArray {unsigned int ia_rows; } ;
struct TYPE_2__ {scalar_t__ pcieSerDesWrite; scalar_t__ pcie_waen; } ;
struct ath_hw {struct ar5416IniArray iniPcieSerdesLowPower; struct ar5416IniArray iniPcieSerdes; TYPE_1__ config; scalar_t__ WARegVal; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PCIE_PM_CTRL ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL_ENA ; 
 scalar_t__ AR_WA ; 
 scalar_t__ FUNC0 (struct ar5416IniArray*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah,
					 bool power_off)
{
	/* Nothing to do on restore for 11N */
	if (!power_off /* !restore */) {
		/* set bit 19 to allow forcing of pcie core into L1 state */
		FUNC1(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);

		/* Several PCIe massages to ensure proper behaviour */
		if (ah->config.pcie_waen)
			FUNC2(ah, AR_WA, ah->config.pcie_waen);
		else
			FUNC2(ah, AR_WA, ah->WARegVal);
	}

	/*
	 * Configire PCIE after Ini init. SERDES values now come from ini file
	 * This enables PCIe low power mode.
	 */
	if (ah->config.pcieSerDesWrite) {
		unsigned int i;
		struct ar5416IniArray *array;

		array = power_off ? &ah->iniPcieSerdes :
				    &ah->iniPcieSerdesLowPower;

		for (i = 0; i < array->ia_rows; i++) {
			FUNC2(ah,
				  FUNC0(array, i, 0),
				  FUNC0(array, i, 1));
		}
	}
}