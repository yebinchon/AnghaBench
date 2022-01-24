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
typedef  int /*<<< orphan*/  u8 ;
struct ixgb_hw {scalar_t__ eeprom; } ;
struct ixgb_ee_map_type {int /*<<< orphan*/ * mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int IXGB_ETH_LENGTH_OF_ADDRESS ; 
 int FUNC2 (struct ixgb_hw*) ; 

void
FUNC3(struct ixgb_hw *hw,
			u8 *mac_addr)
{
	int i;
	struct ixgb_ee_map_type *ee_map = (struct ixgb_ee_map_type *)hw->eeprom;

	FUNC0("ixgb_get_ee_mac_addr");

	if (FUNC2(hw) == true) {
		for (i = 0; i < IXGB_ETH_LENGTH_OF_ADDRESS; i++) {
			mac_addr[i] = ee_map->mac_addr[i];
			FUNC1("mac(%d) = %.2X\n", i, mac_addr[i]);
		}
	}
}