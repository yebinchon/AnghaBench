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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_3__ {int pcie_waen; } ;
struct TYPE_4__ {scalar_t__ ia_rows; } ;
struct ath_hw {TYPE_1__ config; TYPE_2__ iniPcieSerdes; } ;

/* Variables and functions */
 int AR9280_WA_DEFAULT ; 
 int AR9285_WA_DEFAULT ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL_ENA ; 
 int AR_PCIE_SERDES ; 
 int AR_PCIE_SERDES2 ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 int AR_WA ; 
 int AR_WA_BIT22 ; 
 int AR_WA_BIT23 ; 
 int AR_WA_BIT6 ; 
 int AR_WA_BIT7 ; 
 int AR_WA_D3_L1_DISABLE ; 
 int AR_WA_DEFAULT ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int FUNC7 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct ath_hw *ah,
					 bool power_off)
{
	u8 i;
	u32 val;

	/* Nothing to do on restore for 11N */
	if (!power_off /* !restore */) {
		if (FUNC2(ah)) {
			/*
			 * AR9280 2.0 or later chips use SerDes values from the
			 * initvals.h initialized depending on chipset during
			 * __ath9k_hw_init()
			 */
			for (i = 0; i < ah->iniPcieSerdes.ia_rows; i++) {
				FUNC12(ah, FUNC7(&ah->iniPcieSerdes, i, 0),
					  FUNC7(&ah->iniPcieSerdes, i, 1));
			}
		} else {
			FUNC6(ah);

			FUNC12(ah, AR_PCIE_SERDES, 0x9248fc00);
			FUNC12(ah, AR_PCIE_SERDES, 0x24924924);

			/* RX shut off when elecidle is asserted */
			FUNC12(ah, AR_PCIE_SERDES, 0x28000039);
			FUNC12(ah, AR_PCIE_SERDES, 0x53160824);
			FUNC12(ah, AR_PCIE_SERDES, 0xe5980579);

			/*
			 * Ignore ah->ah_config.pcie_clock_req setting for
			 * pre-AR9280 11n
			 */
			FUNC12(ah, AR_PCIE_SERDES, 0x001defff);

			FUNC12(ah, AR_PCIE_SERDES, 0x1aaabe40);
			FUNC12(ah, AR_PCIE_SERDES, 0xbe105554);
			FUNC12(ah, AR_PCIE_SERDES, 0x000e3007);

			/* Load the new settings */
			FUNC12(ah, AR_PCIE_SERDES2, 0x00000000);

			FUNC8(ah);
		}

		FUNC13(1000);
	}

	if (power_off) {
		/* clear bit 19 to disable L1 */
		FUNC9(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);

		val = FUNC10(ah, AR_WA);

		/*
		 * Set PCIe workaround bits
		 * In AR9280 and AR9285, bit 14 in WA register (disable L1)
		 * should only  be set when device enters D3 and be
		 * cleared when device comes back to D0.
		 */
		if (ah->config.pcie_waen) {
			if (ah->config.pcie_waen & AR_WA_D3_L1_DISABLE)
				val |= AR_WA_D3_L1_DISABLE;
		} else {
			if (((FUNC3(ah) ||
			      FUNC0(ah) ||
			      FUNC5(ah)) &&
			     (AR9285_WA_DEFAULT & AR_WA_D3_L1_DISABLE)) ||
			    (FUNC1(ah) &&
			     (AR9280_WA_DEFAULT & AR_WA_D3_L1_DISABLE))) {
				val |= AR_WA_D3_L1_DISABLE;
			}
		}

		if (FUNC1(ah) || FUNC3(ah) || FUNC5(ah)) {
			/*
			 * Disable bit 6 and 7 before entering D3 to
			 * prevent system hang.
			 */
			val &= ~(AR_WA_BIT6 | AR_WA_BIT7);
		}

		if (FUNC1(ah))
			val |= AR_WA_BIT22;

		if (FUNC4(ah))
			val |= AR_WA_BIT23;

		FUNC12(ah, AR_WA, val);
	} else {
		if (ah->config.pcie_waen) {
			val = ah->config.pcie_waen;
			if (!power_off)
				val &= (~AR_WA_D3_L1_DISABLE);
		} else {
			if (FUNC3(ah) ||
			    FUNC0(ah) ||
			    FUNC5(ah)) {
				val = AR9285_WA_DEFAULT;
				if (!power_off)
					val &= (~AR_WA_D3_L1_DISABLE);
			}
			else if (FUNC1(ah)) {
				/*
				 * For AR9280 chips, bit 22 of 0x4004
				 * needs to be set.
				 */
				val = AR9280_WA_DEFAULT;
				if (!power_off)
					val &= (~AR_WA_D3_L1_DISABLE);
			} else {
				val = AR_WA_DEFAULT;
			}
		}

		/* WAR for ASPM system hang */
		if (FUNC3(ah) || FUNC5(ah))
			val |= (AR_WA_BIT6 | AR_WA_BIT7);

		if (FUNC4(ah))
			val |= AR_WA_BIT23;

		FUNC12(ah, AR_WA, val);

		/* set bit 19 to allow forcing of pcie core into L1 state */
		FUNC11(ah, AR_PCIE_PM_CTRL, AR_PCIE_PM_CTRL_ENA);
	}
}