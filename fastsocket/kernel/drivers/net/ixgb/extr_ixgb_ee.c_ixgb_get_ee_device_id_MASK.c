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
typedef  int /*<<< orphan*/  u16 ;
struct ixgb_hw {scalar_t__ eeprom; } ;
struct ixgb_ee_map_type {int /*<<< orphan*/  device_id; } ;

/* Variables and functions */
 int FUNC0 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

u16
FUNC2(struct ixgb_hw *hw)
{
	struct ixgb_ee_map_type *ee_map = (struct ixgb_ee_map_type *)hw->eeprom;

	if (FUNC0(hw) == true)
		return (FUNC1(ee_map->device_id));

	return (0);
}