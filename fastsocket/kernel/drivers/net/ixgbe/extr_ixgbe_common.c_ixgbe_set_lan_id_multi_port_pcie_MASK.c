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
struct ixgbe_bus_info {int func; int lan_id; } ;
struct ixgbe_hw {struct ixgbe_bus_info bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_FACTPS ; 
 int IXGBE_FACTPS_LFS ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_STATUS ; 
 int IXGBE_STATUS_LAN_ID ; 
 int IXGBE_STATUS_LAN_ID_SHIFT ; 

void FUNC1(struct ixgbe_hw *hw)
{
	struct ixgbe_bus_info *bus = &hw->bus;
	u32 reg;

	reg = FUNC0(hw, IXGBE_STATUS);
	bus->func = (reg & IXGBE_STATUS_LAN_ID) >> IXGBE_STATUS_LAN_ID_SHIFT;
	bus->lan_id = bus->func;

	/* check for a port swap */
	reg = FUNC0(hw, IXGBE_FACTPS);
	if (reg & IXGBE_FACTPS_LFS)
		bus->func ^= 0x1;
}