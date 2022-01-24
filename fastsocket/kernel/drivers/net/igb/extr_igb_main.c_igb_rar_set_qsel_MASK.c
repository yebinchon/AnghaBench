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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E1000_RAH_AV ; 
 int E1000_RAH_POOL_1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ e1000_82575 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct igb_adapter *adapter, u8 *addr, u32 index,
			     u8 qsel)
{
	u32 rar_low, rar_high;
	struct e1000_hw *hw = &adapter->hw;

	/* HW expects these in little endian so we reverse the byte order
	 * from network order (big endian) to little endian
	 */
	rar_low = ((u32) addr[0] | ((u32) addr[1] << 8) |
		   ((u32) addr[2] << 16) | ((u32) addr[3] << 24));
	rar_high = ((u32) addr[4] | ((u32) addr[5] << 8));

	/* Indicate to hardware the Address is Valid. */
	rar_high |= E1000_RAH_AV;

	if (hw->mac.type == e1000_82575)
		rar_high |= E1000_RAH_POOL_1 * qsel;
	else
		rar_high |= E1000_RAH_POOL_1 << qsel;

	FUNC2(FUNC1(index), rar_low);
	FUNC3();
	FUNC2(FUNC0(index), rar_high);
	FUNC3();
}