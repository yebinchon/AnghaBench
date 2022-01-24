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
typedef  scalar_t__ u32 ;
struct ixgb_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ IXGB_VLAN_FILTER_TBL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ixgb_hw*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFTA ; 

__attribute__((used)) static void
FUNC1(struct ixgb_hw *hw)
{
	u32 offset;

	for (offset = 0; offset < IXGB_VLAN_FILTER_TBL_SIZE; offset++)
		FUNC0(hw, VFTA, offset, 0);
	return;
}