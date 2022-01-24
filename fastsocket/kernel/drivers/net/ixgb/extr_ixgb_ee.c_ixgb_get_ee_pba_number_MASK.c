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
struct ixgb_hw {int /*<<< orphan*/ * eeprom; } ;

/* Variables and functions */
 size_t EEPROM_PBA_1_2_REG ; 
 size_t EEPROM_PBA_3_4_REG ; 
 int FUNC0 (struct ixgb_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

u32
FUNC2(struct ixgb_hw *hw)
{
	if (FUNC0(hw) == true)
		return (FUNC1(hw->eeprom[EEPROM_PBA_1_2_REG])
			| (FUNC1(hw->eeprom[EEPROM_PBA_3_4_REG])<<16));

	return(0);
}