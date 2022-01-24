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
typedef  int u16 ;
struct sky2_port {unsigned int port; int /*<<< orphan*/  phy_lock; struct sky2_hw* hw; } ;
struct sky2_hw {scalar_t__ chip_id; } ;
typedef  enum led_mode { ____Placeholder_led_mode } led_mode ;

/* Variables and functions */
 scalar_t__ CHIP_ID_YUKON_EC_U ; 
 scalar_t__ CHIP_ID_YUKON_EX ; 
 scalar_t__ CHIP_ID_YUKON_SUPR ; 
#define  MO_LED_BLINK 131 
#define  MO_LED_NORM 130 
#define  MO_LED_OFF 129 
#define  MO_LED_ON 128 
 int /*<<< orphan*/  PHY_MARV_EXT_ADR ; 
 int /*<<< orphan*/  PHY_MARV_LED_OVER ; 
 int /*<<< orphan*/  PHY_MARV_PHY_CTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct sky2_port *sky2, enum led_mode mode)
{
	struct sky2_hw *hw = sky2->hw;
	unsigned port = sky2->port;

	FUNC12(&sky2->phy_lock);
	if (hw->chip_id == CHIP_ID_YUKON_EC_U ||
	    hw->chip_id == CHIP_ID_YUKON_EX ||
	    hw->chip_id == CHIP_ID_YUKON_SUPR) {
		u16 pg;
		pg = FUNC10(hw, port, PHY_MARV_EXT_ADR);
		FUNC11(hw, port, PHY_MARV_EXT_ADR, 3);

		switch (mode) {
		case MO_LED_OFF:
			FUNC11(hw, port, PHY_MARV_PHY_CTRL,
				     FUNC1(8) |
				     FUNC0(8) |
				     FUNC3(8) |
				     FUNC2(8));
			break;
		case MO_LED_ON:
			FUNC11(hw, port, PHY_MARV_PHY_CTRL,
				     FUNC1(9) |
				     FUNC0(9) |
				     FUNC3(9) |
				     FUNC2(9));
			break;
		case MO_LED_BLINK:
			FUNC11(hw, port, PHY_MARV_PHY_CTRL,
				     FUNC1(0xa) |
				     FUNC0(0xa) |
				     FUNC3(0xa) |
				     FUNC2(0xa));
			break;
		case MO_LED_NORM:
			FUNC11(hw, port, PHY_MARV_PHY_CTRL,
				     FUNC1(1) |
				     FUNC0(8) |
				     FUNC3(7) |
				     FUNC2(7));
		}

		FUNC11(hw, port, PHY_MARV_EXT_ADR, pg);
	} else
		FUNC11(hw, port, PHY_MARV_LED_OVER,
				     FUNC7(mode) |
				     FUNC4(mode) |
				     FUNC5(mode) |
				     FUNC6(mode) |
				     FUNC8(mode) |
				     FUNC9(mode));

	FUNC13(&sky2->phy_lock);
}