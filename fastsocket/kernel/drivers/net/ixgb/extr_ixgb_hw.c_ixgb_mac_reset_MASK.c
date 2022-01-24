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
typedef  int u32 ;
struct ixgb_hw {scalar_t__ subsystem_vendor_id; scalar_t__ phy_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CTRL0 ; 
 int /*<<< orphan*/  CTRL1 ; 
 int IXGB_CTRL0_RST ; 
 int IXGB_CTRL0_SDP0 ; 
 int IXGB_CTRL0_SDP0_DIR ; 
 int IXGB_CTRL0_SDP1_DIR ; 
 int IXGB_CTRL0_SDP2 ; 
 int IXGB_CTRL0_SDP2_DIR ; 
 int IXGB_CTRL0_SDP3 ; 
 int IXGB_CTRL0_SDP3_DIR ; 
 int IXGB_CTRL1_GPI0_EN ; 
 int IXGB_CTRL1_SDP6 ; 
 int IXGB_CTRL1_SDP6_DIR ; 
 int IXGB_CTRL1_SDP7 ; 
 int IXGB_CTRL1_SDP7_DIR ; 
 int /*<<< orphan*/  IXGB_DELAY_AFTER_RESET ; 
 int FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SUN_SUBVENDOR_ID ; 
 int /*<<< orphan*/  FUNC4 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgb_hw*) ; 
 scalar_t__ ixgb_phy_type_txn17401 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC7(struct ixgb_hw *hw)
{
	u32 ctrl_reg;

	ctrl_reg =  IXGB_CTRL0_RST |
				IXGB_CTRL0_SDP3_DIR |   /* All pins are Output=1 */
				IXGB_CTRL0_SDP2_DIR |
				IXGB_CTRL0_SDP1_DIR |
				IXGB_CTRL0_SDP0_DIR |
				IXGB_CTRL0_SDP3	 |   /* Initial value 1101   */
				IXGB_CTRL0_SDP2	 |
				IXGB_CTRL0_SDP0;

#ifdef HP_ZX1
	/* Workaround for 82597EX reset errata */
	IXGB_WRITE_REG_IO(hw, CTRL0, ctrl_reg);
#else
	FUNC2(hw, CTRL0, ctrl_reg);
#endif

	/* Delay a few ms just to allow the reset to complete */
	FUNC6(IXGB_DELAY_AFTER_RESET);
	ctrl_reg = FUNC1(hw, CTRL0);
#ifdef DBG
	/* Make sure the self-clearing global reset bit did self clear */
	ASSERT(!(ctrl_reg & IXGB_CTRL0_RST));
#endif

	if (hw->subsystem_vendor_id == SUN_SUBVENDOR_ID) {
		ctrl_reg =  /* Enable interrupt from XFP and SerDes */
			   IXGB_CTRL1_GPI0_EN |
			   IXGB_CTRL1_SDP6_DIR |
			   IXGB_CTRL1_SDP7_DIR |
			   IXGB_CTRL1_SDP6 |
			   IXGB_CTRL1_SDP7;
		FUNC2(hw, CTRL1, ctrl_reg);
		FUNC5(hw);
	}

	if (hw->phy_type == ixgb_phy_type_txn17401)
		FUNC4(hw);

	return ctrl_reg;
}