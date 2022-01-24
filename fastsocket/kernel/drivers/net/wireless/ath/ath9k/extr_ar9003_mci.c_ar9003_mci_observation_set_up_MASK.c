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
struct ath9k_hw_mci {int config; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_BTCOEX_CTRL2 ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL2_GPIO_OBS_SEL ; 
 int /*<<< orphan*/  AR_BTCOEX_CTRL2_MAC_BB_OBS_SEL ; 
 int /*<<< orphan*/  AR_DIAG_OBS_PT_SEL1 ; 
 int /*<<< orphan*/  AR_DIAG_OBS_PT_SEL2 ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  AR_GLB_DS_JTAG_DISABLE ; 
 int /*<<< orphan*/  AR_GLB_GPIO_CONTROL ; 
 int /*<<< orphan*/  AR_GLB_WLAN_UART_INTF_EN ; 
 int /*<<< orphan*/  AR_GPIO_INPUT_EN_VAL ; 
 int /*<<< orphan*/  AR_GPIO_JTAG_DISABLE ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_CLK ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_DATA ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_OUTPUT ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_WL_IN_RX ; 
 int /*<<< orphan*/  AR_GPIO_OUTPUT_MUX_AS_WL_IN_TX ; 
 int /*<<< orphan*/  AR_MACMISC ; 
 int /*<<< orphan*/  AR_MACMISC_MISC_OBS_BUS_LSB ; 
 int /*<<< orphan*/  AR_MACMISC_MISC_OBS_BUS_MSB ; 
 int /*<<< orphan*/  AR_OBS ; 
 int /*<<< orphan*/  AR_PHY_GLB_CONTROL ; 
 int /*<<< orphan*/  AR_PHY_TEST_CTL_DEBUGPORT_SEL ; 
 int /*<<< orphan*/  AR_PHY_TEST_CTL_STATUS ; 
 int ATH_MCI_CONFIG_MCI_OBS_BT ; 
 int /*<<< orphan*/  ATH_MCI_CONFIG_MCI_OBS_GPIO ; 
 int ATH_MCI_CONFIG_MCI_OBS_MCI ; 
 int ATH_MCI_CONFIG_MCI_OBS_TXRX ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah)
{
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

	if (mci->config & ATH_MCI_CONFIG_MCI_OBS_MCI) {
		FUNC3(ah, 3, AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_DATA);
		FUNC3(ah, 2, AR_GPIO_OUTPUT_MUX_AS_MCI_WLAN_CLK);
		FUNC3(ah, 1, AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA);
		FUNC3(ah, 0, AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK);
	} else if (mci->config & ATH_MCI_CONFIG_MCI_OBS_TXRX) {
		FUNC3(ah, 3, AR_GPIO_OUTPUT_MUX_AS_WL_IN_TX);
		FUNC3(ah, 2, AR_GPIO_OUTPUT_MUX_AS_WL_IN_RX);
		FUNC3(ah, 1, AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX);
		FUNC3(ah, 0, AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX);
		FUNC3(ah, 5, AR_GPIO_OUTPUT_MUX_AS_OUTPUT);
	} else if (mci->config & ATH_MCI_CONFIG_MCI_OBS_BT) {
		FUNC3(ah, 3, AR_GPIO_OUTPUT_MUX_AS_BT_IN_TX);
		FUNC3(ah, 2, AR_GPIO_OUTPUT_MUX_AS_BT_IN_RX);
		FUNC3(ah, 1, AR_GPIO_OUTPUT_MUX_AS_MCI_BT_DATA);
		FUNC3(ah, 0, AR_GPIO_OUTPUT_MUX_AS_MCI_BT_CLK);
	} else
		return;

	FUNC1(ah, AR_GPIO_INPUT_EN_VAL, AR_GPIO_JTAG_DISABLE);

	FUNC0(ah, AR_PHY_GLB_CONTROL, AR_GLB_DS_JTAG_DISABLE, 1);
	FUNC0(ah, AR_PHY_GLB_CONTROL, AR_GLB_WLAN_UART_INTF_EN, 0);
	FUNC1(ah, AR_GLB_GPIO_CONTROL, ATH_MCI_CONFIG_MCI_OBS_GPIO);

	FUNC0(ah, AR_BTCOEX_CTRL2, AR_BTCOEX_CTRL2_GPIO_OBS_SEL, 0);
	FUNC0(ah, AR_BTCOEX_CTRL2, AR_BTCOEX_CTRL2_MAC_BB_OBS_SEL, 1);
	FUNC2(ah, AR_OBS, 0x4b);
	FUNC0(ah, AR_DIAG_SW, AR_DIAG_OBS_PT_SEL1, 0x03);
	FUNC0(ah, AR_DIAG_SW, AR_DIAG_OBS_PT_SEL2, 0x01);
	FUNC0(ah, AR_MACMISC, AR_MACMISC_MISC_OBS_BUS_LSB, 0x02);
	FUNC0(ah, AR_MACMISC, AR_MACMISC_MISC_OBS_BUS_MSB, 0x03);
	FUNC0(ah, AR_PHY_TEST_CTL_STATUS,
		      AR_PHY_TEST_CTL_DEBUGPORT_SEL, 0x07);
}