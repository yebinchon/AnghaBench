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
typedef  int /*<<< orphan*/  u16 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SWFW_SYNC ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_hw *hw, u16 mask)
{
	u32 swfw_sync;
	u32 swmask = mask;

	FUNC2(hw);

	swfw_sync = FUNC0(hw, IXGBE_SWFW_SYNC);
	swfw_sync &= ~swmask;
	FUNC1(hw, IXGBE_SWFW_SYNC, swfw_sync);

	FUNC3(hw);
	FUNC4(5000, 10000);
}