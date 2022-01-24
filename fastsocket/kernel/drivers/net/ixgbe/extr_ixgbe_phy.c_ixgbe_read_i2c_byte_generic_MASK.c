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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ IXGBE_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_GSSR_PHY0_SM ; 
 int /*<<< orphan*/  IXGBE_GSSR_PHY1_SM ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_STATUS ; 
 int IXGBE_STATUS_LAN_ID_1 ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,char*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int*) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 

s32 FUNC13(struct ixgbe_hw *hw, u8 byte_offset,
                                u8 dev_addr, u8 *data)
{
	s32 status = 0;
	u32 max_retry = 10;
	u32 retry = 0;
	u16 swfw_mask = 0;
	bool nack = true;
	*data = 0;

	if (FUNC0(hw, IXGBE_STATUS) & IXGBE_STATUS_LAN_ID_1)
		swfw_mask = IXGBE_GSSR_PHY1_SM;
	else
		swfw_mask = IXGBE_GSSR_PHY0_SM;

	do {
		if (hw->mac.ops.acquire_swfw_sync(hw, swfw_mask) != 0) {
			status = IXGBE_ERR_SWFW_SYNC;
			goto read_byte_out;
		}

		FUNC7(hw);

		/* Device Address and write indication */
		status = FUNC4(hw, dev_addr);
		if (status != 0)
			goto fail;

		status = FUNC5(hw);
		if (status != 0)
			goto fail;

		status = FUNC4(hw, byte_offset);
		if (status != 0)
			goto fail;

		status = FUNC5(hw);
		if (status != 0)
			goto fail;

		FUNC7(hw);

		/* Device Address and read indication */
		status = FUNC4(hw, (dev_addr | 0x1));
		if (status != 0)
			goto fail;

		status = FUNC5(hw);
		if (status != 0)
			goto fail;

		status = FUNC2(hw, data);
		if (status != 0)
			goto fail;

		status = FUNC3(hw, nack);
		if (status != 0)
			goto fail;

		FUNC8(hw);
		break;

fail:
		FUNC6(hw);
		hw->mac.ops.release_swfw_sync(hw, swfw_mask);
		FUNC9(100);
		retry++;
		if (retry < max_retry)
			FUNC1(hw, "I2C byte read error - Retrying.\n");
		else
			FUNC1(hw, "I2C byte read error.\n");

	} while (retry < max_retry);

	hw->mac.ops.release_swfw_sync(hw, swfw_mask);

read_byte_out:
	return status;
}