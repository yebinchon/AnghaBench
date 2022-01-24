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
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SWFW_REGSMP ; 
 int /*<<< orphan*/  IXGBE_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_SWSM ; 
 int /*<<< orphan*/  IXGBE_SWSM_SMBI ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_hw *hw)
{
	 u32 swsm;

	/* Release both semaphores by writing 0 to the bits REGSMP and SMBI */

	swsm = FUNC0(hw, IXGBE_SWSM);
	swsm &= ~IXGBE_SWSM_SMBI;
	FUNC2(hw, IXGBE_SWSM, swsm);

	swsm = FUNC0(hw, IXGBE_SWFW_SYNC);
	swsm &= ~IXGBE_SWFW_REGSMP;
	FUNC2(hw, IXGBE_SWFW_SYNC, swsm);

	FUNC1(hw);
}