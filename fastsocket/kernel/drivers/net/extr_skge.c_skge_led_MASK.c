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
struct skge_port {int port; int /*<<< orphan*/  speed; struct skge_hw* hw; } ;
struct skge_hw {scalar_t__ chip_id; int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  phy_type; } ;
typedef  enum led_mode { ____Placeholder_led_mode } led_mode ;

/* Variables and functions */
 int /*<<< orphan*/  BLINK_84MS ; 
 scalar_t__ CHIP_ID_GENESIS ; 
#define  LED_MODE_OFF 130 
#define  LED_MODE_ON 129 
#define  LED_MODE_TST 128 
 int /*<<< orphan*/  LED_START ; 
 int /*<<< orphan*/  LED_T_OFF ; 
 int /*<<< orphan*/  LED_T_ON ; 
 int /*<<< orphan*/  LINKLED_LINKSYNC_ON ; 
 int /*<<< orphan*/  LINKLED_OFF ; 
 int /*<<< orphan*/  LINKLED_ON ; 
 int /*<<< orphan*/  LNK_LED_REG ; 
 int /*<<< orphan*/  MO_LED_OFF ; 
 int /*<<< orphan*/  MO_LED_ON ; 
 int /*<<< orphan*/  PHY_BCOM_P_EXT_CTRL ; 
 int /*<<< orphan*/  PHY_B_PEC_LED_OFF ; 
 int /*<<< orphan*/  PHY_B_PEC_LED_ON ; 
 int /*<<< orphan*/  PHY_MARV_LED_CTRL ; 
 int /*<<< orphan*/  PHY_MARV_LED_OVER ; 
 int PHY_M_LEDC_DP_CTRL ; 
 int PHY_M_LEDC_TX_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PULS_170MS ; 
 int /*<<< orphan*/  RX_LED_CTRL ; 
 int /*<<< orphan*/  RX_LED_TST ; 
 int /*<<< orphan*/  RX_LED_VAL ; 
 int /*<<< orphan*/  SK_PHY_BCOM ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  TX_LED_CTRL ; 
 int /*<<< orphan*/  TX_LED_TST ; 
 int /*<<< orphan*/  TX_LED_VAL ; 
 int /*<<< orphan*/  FUNC8 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct skge_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct skge_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct skge_port *skge, enum led_mode mode)
{
	struct skge_hw *hw = skge->hw;
	int port = skge->port;

	FUNC11(&hw->phy_lock);
	if (hw->chip_id == CHIP_ID_GENESIS) {
		switch (mode) {
		case LED_MODE_OFF:
			if (hw->phy_type == SK_PHY_BCOM)
				FUNC13(hw, port, PHY_BCOM_P_EXT_CTRL, PHY_B_PEC_LED_OFF);
			else {
				FUNC9(hw, FUNC7(port, TX_LED_VAL), 0);
				FUNC10(hw, FUNC7(port, TX_LED_CTRL), LED_T_OFF);
			}
			FUNC10(hw, FUNC7(port, LNK_LED_REG), LINKLED_OFF);
			FUNC9(hw, FUNC7(port, RX_LED_VAL), 0);
			FUNC10(hw, FUNC7(port, RX_LED_CTRL), LED_T_OFF);
			break;

		case LED_MODE_ON:
			FUNC10(hw, FUNC7(port, LNK_LED_REG), LINKLED_ON);
			FUNC10(hw, FUNC7(port, LNK_LED_REG), LINKLED_LINKSYNC_ON);

			FUNC10(hw, FUNC7(port, RX_LED_CTRL), LED_START);
			FUNC10(hw, FUNC7(port, TX_LED_CTRL), LED_START);

			break;

		case LED_MODE_TST:
			FUNC10(hw, FUNC7(port, RX_LED_TST), LED_T_ON);
			FUNC9(hw, FUNC7(port, RX_LED_VAL), 100);
			FUNC10(hw, FUNC7(port, RX_LED_CTRL), LED_START);

			if (hw->phy_type == SK_PHY_BCOM)
				FUNC13(hw, port, PHY_BCOM_P_EXT_CTRL, PHY_B_PEC_LED_ON);
			else {
				FUNC10(hw, FUNC7(port, TX_LED_TST), LED_T_ON);
				FUNC9(hw, FUNC7(port, TX_LED_VAL), 100);
				FUNC10(hw, FUNC7(port, TX_LED_CTRL), LED_START);
			}

		}
	} else {
		switch (mode) {
		case LED_MODE_OFF:
			FUNC8(hw, port, PHY_MARV_LED_CTRL, 0);
			FUNC8(hw, port, PHY_MARV_LED_OVER,
				     FUNC4(MO_LED_OFF)  |
				     FUNC1(MO_LED_OFF)   |
				     FUNC2(MO_LED_OFF)  |
				     FUNC3(MO_LED_OFF) |
				     FUNC5(MO_LED_OFF));
			break;
		case LED_MODE_ON:
			FUNC8(hw, port, PHY_MARV_LED_CTRL,
				     FUNC6(PULS_170MS) |
				     FUNC0(BLINK_84MS) |
				     PHY_M_LEDC_TX_CTRL |
				     PHY_M_LEDC_DP_CTRL);

			FUNC8(hw, port, PHY_MARV_LED_OVER,
				     FUNC5(MO_LED_OFF) |
				     (skge->speed == SPEED_100 ?
				      FUNC2(MO_LED_ON) : 0));
			break;
		case LED_MODE_TST:
			FUNC8(hw, port, PHY_MARV_LED_CTRL, 0);
			FUNC8(hw, port, PHY_MARV_LED_OVER,
				     FUNC4(MO_LED_ON)  |
				     FUNC1(MO_LED_ON)   |
				     FUNC2(MO_LED_ON)  |
				     FUNC3(MO_LED_ON) |
				     FUNC5(MO_LED_ON));
		}
	}
	FUNC12(&hw->phy_lock);
}