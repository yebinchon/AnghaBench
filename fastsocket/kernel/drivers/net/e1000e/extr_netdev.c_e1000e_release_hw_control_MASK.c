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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_CTRL_EXT_DRV_LOAD ; 
 int E1000_SWSM_DRV_LOAD ; 
 int FLAG_HAS_CTRLEXT_ON_LOAD ; 
 int FLAG_HAS_SWSM_ON_LOAD ; 
 int /*<<< orphan*/  SWSM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl_ext;
	u32 swsm;

	/* Let firmware taken over control of h/w */
	if (adapter->flags & FLAG_HAS_SWSM_ON_LOAD) {
		swsm = FUNC0(SWSM);
		FUNC1(SWSM, swsm & ~E1000_SWSM_DRV_LOAD);
	} else if (adapter->flags & FLAG_HAS_CTRLEXT_ON_LOAD) {
		ctrl_ext = FUNC0(CTRL_EXT);
		FUNC1(CTRL_EXT, ctrl_ext & ~E1000_CTRL_EXT_DRV_LOAD);
	}
}