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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_lan_id ) (struct ixgbe_hw*) ;} ;
struct ixgbe_mac_info {TYPE_1__ ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; int /*<<< orphan*/  width; int /*<<< orphan*/  type; } ;
struct ixgbe_hw {TYPE_2__ bus; struct ixgbe_mac_info mac; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_PCI_LINK_STATUS ; 
 int /*<<< orphan*/  ixgbe_bus_type_pci_express ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 

s32 FUNC4(struct ixgbe_hw *hw)
{
	struct ixgbe_adapter *adapter = hw->back;
	struct ixgbe_mac_info *mac = &hw->mac;
	u16 link_status;

	hw->bus.type = ixgbe_bus_type_pci_express;

	/* Get the negotiated link width and speed from PCI config space */
	FUNC2(adapter->pdev, IXGBE_PCI_LINK_STATUS,
	                     &link_status);

	hw->bus.width = FUNC1(link_status);
	hw->bus.speed = FUNC0(link_status);

	mac->ops.set_lan_id(hw);

	return 0;
}