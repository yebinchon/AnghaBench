#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_11__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int orig_autoc; TYPE_5__ ops; int /*<<< orphan*/  cached_autoc; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_10__ {int semaphore_delay; TYPE_3__ ops; } ;
struct TYPE_7__ {int /*<<< orphan*/ * reset; } ;
struct TYPE_8__ {scalar_t__ sfp_type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_6__ mac; TYPE_4__ eeprom; TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_AUTOC ; 
 int IXGBE_AUTOC_LMS_10G_SERIAL ; 
 int /*<<< orphan*/  IXGBE_CORECTL ; 
 scalar_t__ IXGBE_ERR_SFP_SETUP_NOT_COMPLETE ; 
 scalar_t__ IXGBE_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_GSSR_MAC_CSR_SM ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,char*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*) ; 
 scalar_t__ ixgbe_sfp_type_unknown ; 
 scalar_t__ FUNC7 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 

__attribute__((used)) static s32 FUNC15(struct ixgbe_hw *hw)
{
	s32 ret_val = 0;
	u16 list_offset, data_offset, data_value;
	bool got_lock = false;

	if (hw->phy.sfp_type != ixgbe_sfp_type_unknown) {
		FUNC5(hw);

		hw->phy.ops.reset = NULL;

		ret_val = FUNC4(hw, &list_offset,
		                                              &data_offset);
		if (ret_val != 0)
			goto setup_sfp_out;

		/* PHY config will finish before releasing the semaphore */
		ret_val = hw->mac.ops.acquire_swfw_sync(hw,
		                                        IXGBE_GSSR_MAC_CSR_SM);
		if (ret_val != 0) {
			ret_val = IXGBE_ERR_SWFW_SYNC;
			goto setup_sfp_out;
		}

		hw->eeprom.ops.read(hw, ++data_offset, &data_value);
		while (data_value != 0xffff) {
			FUNC2(hw, IXGBE_CORECTL, data_value);
			FUNC1(hw);
			hw->eeprom.ops.read(hw, ++data_offset, &data_value);
		}

		/* Release the semaphore */
		hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);
		/*
		 * Delay obtaining semaphore again to allow FW access,
		 * semaphore_delay is in ms usleep_range needs us.
		 */
		FUNC14(hw->eeprom.semaphore_delay * 1000,
			     hw->eeprom.semaphore_delay * 2000);

		/* Need SW/FW semaphore around AUTOC writes if LESM on,
		 * likewise reset_pipeline requires lock as it also writes
		 * AUTOC.
		 */
		if (FUNC7(hw)) {
			ret_val = hw->mac.ops.acquire_swfw_sync(hw,
							IXGBE_GSSR_MAC_CSR_SM);
			if (ret_val)
				goto setup_sfp_out;

			got_lock = true;
		}

		/* Restart DSP and set SFI mode */
		FUNC2(hw, IXGBE_AUTOC, ((hw->mac.orig_autoc) |
				IXGBE_AUTOC_LMS_10G_SERIAL));
		hw->mac.cached_autoc = FUNC0(hw, IXGBE_AUTOC);
		ret_val = FUNC6(hw);

		if (got_lock) {
			hw->mac.ops.release_swfw_sync(hw,
						      IXGBE_GSSR_MAC_CSR_SM);
			got_lock = false;
		}

		if (ret_val) {
			FUNC3(hw, " sfp module setup not complete\n");
			ret_val = IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
			goto setup_sfp_out;
		}
	}

setup_sfp_out:
	return ret_val;
}