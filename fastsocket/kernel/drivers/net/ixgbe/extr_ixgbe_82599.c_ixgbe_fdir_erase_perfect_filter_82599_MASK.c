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
struct TYPE_2__ {int bkt_hash; } ;
union ixgbe_atr_input {TYPE_1__ formatted; } ;
typedef  int u32 ;
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_FDIR_REINIT_FAILED ; 
 int /*<<< orphan*/  IXGBE_FDIRCMD ; 
 int IXGBE_FDIRCMD_CMD_MASK ; 
 int IXGBE_FDIRCMD_CMD_QUERY_REM_FILT ; 
 int IXGBE_FDIRCMD_CMD_REMOVE_FLOW ; 
 int IXGBE_FDIRCMD_FILTER_VALID ; 
 int /*<<< orphan*/  IXGBE_FDIRHASH ; 
 int IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

s32 FUNC4(struct ixgbe_hw *hw,
					  union ixgbe_atr_input *input,
					  u16 soft_id)
{
	u32 fdirhash;
	u32 fdircmd = 0;
	u32 retry_count;
	s32 err = 0;

	/* configure FDIRHASH register */
	fdirhash = input->formatted.bkt_hash;
	fdirhash |= soft_id << IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT;
	FUNC2(hw, IXGBE_FDIRHASH, fdirhash);

	/* flush hash to HW */
	FUNC1(hw);

	/* Query if filter is present */
	FUNC2(hw, IXGBE_FDIRCMD, IXGBE_FDIRCMD_CMD_QUERY_REM_FILT);

	for (retry_count = 10; retry_count; retry_count--) {
		/* allow 10us for query to process */
		FUNC3(10);
		/* verify query completed successfully */
		fdircmd = FUNC0(hw, IXGBE_FDIRCMD);
		if (!(fdircmd & IXGBE_FDIRCMD_CMD_MASK))
			break;
	}

	if (!retry_count)
		err = IXGBE_ERR_FDIR_REINIT_FAILED;

	/* if filter exists in hardware then remove it */
	if (fdircmd & IXGBE_FDIRCMD_FILTER_VALID) {
		FUNC2(hw, IXGBE_FDIRHASH, fdirhash);
		FUNC1(hw);
		FUNC2(hw, IXGBE_FDIRCMD,
				IXGBE_FDIRCMD_CMD_REMOVE_FLOW);
	}

	return err;
}