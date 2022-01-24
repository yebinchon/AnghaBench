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
struct e1000_bus_info {int func; } ;
struct e1000_hw {struct e1000_bus_info bus; } ;

/* Variables and functions */
 int E1000_STATUS_FUNC_MASK ; 
 int E1000_STATUS_FUNC_SHIFT ; 
 int /*<<< orphan*/  STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct e1000_hw *hw)
{
	struct e1000_bus_info *bus = &hw->bus;
	u32 reg;

	/* The status register reports the correct function number
	 * for the device regardless of function swap state.
	 */
	reg = FUNC0(STATUS);
	bus->func = (reg & E1000_STATUS_FUNC_MASK) >> E1000_STATUS_FUNC_SHIFT;
}