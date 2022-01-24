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
struct ixgb_hw {int max_frame_size; } ;
struct ixgb_adapter {struct ixgb_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int ENET_FCS_LENGTH ; 
 int /*<<< orphan*/  ERR ; 
 int IXGB_CTRL0_JFE ; 
 int IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS ; 
 int IXGB_MFS_SHIFT ; 
 int FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MFS ; 
 int /*<<< orphan*/  PROBE ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgb_hw*) ; 

void
FUNC5(struct ixgb_adapter *adapter)
{
	struct ixgb_hw *hw = &adapter->hw;

	FUNC3(hw);
	if (!FUNC4(hw))
		FUNC0(PROBE, ERR, "ixgb_init_hw failed.\n");

	/* restore frame size information */
	FUNC2(hw, MFS, hw->max_frame_size << IXGB_MFS_SHIFT);
	if (hw->max_frame_size >
	    IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS + ENET_FCS_LENGTH) {
		u32 ctrl0 = FUNC1(hw, CTRL0);
		if (!(ctrl0 & IXGB_CTRL0_JFE)) {
			ctrl0 |= IXGB_CTRL0_JFE;
			FUNC2(hw, CTRL0, ctrl0);
		}
	}
}