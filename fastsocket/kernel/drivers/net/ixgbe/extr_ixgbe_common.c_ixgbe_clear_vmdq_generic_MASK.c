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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  (* clear_rar ) (struct ixgbe_hw*,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ num_rar_entries; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 scalar_t__ IXGBE_CLEAR_VMDQ_ALL ; 
 int /*<<< orphan*/  IXGBE_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,scalar_t__) ; 

s32 FUNC6(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
{
	u32 mpsar_lo, mpsar_hi;
	u32 rar_entries = hw->mac.num_rar_entries;

	/* Make sure we are using a valid rar index range */
	if (rar >= rar_entries) {
		FUNC4(hw, "RAR index %d is out of range.\n", rar);
		return IXGBE_ERR_INVALID_ARGUMENT;
	}

	mpsar_lo = FUNC2(hw, FUNC1(rar));
	mpsar_hi = FUNC2(hw, FUNC0(rar));

	if (!mpsar_lo && !mpsar_hi)
		goto done;

	if (vmdq == IXGBE_CLEAR_VMDQ_ALL) {
		if (mpsar_lo) {
			FUNC3(hw, FUNC1(rar), 0);
			mpsar_lo = 0;
		}
		if (mpsar_hi) {
			FUNC3(hw, FUNC0(rar), 0);
			mpsar_hi = 0;
		}
	} else if (vmdq < 32) {
		mpsar_lo &= ~(1 << vmdq);
		FUNC3(hw, FUNC1(rar), mpsar_lo);
	} else {
		mpsar_hi &= ~(1 << (vmdq - 32));
		FUNC3(hw, FUNC0(rar), mpsar_hi);
	}

	/* was that the last pool using this rar? */
	if (mpsar_lo == 0 && mpsar_hi == 0 && rar != 0)
		hw->mac.ops.clear_rar(hw, rar);
done:
	return 0;
}