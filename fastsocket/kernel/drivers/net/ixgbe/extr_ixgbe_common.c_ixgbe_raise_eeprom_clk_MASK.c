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
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EEC ; 
 int IXGBE_EEC_SK ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_hw *hw, u32 *eec)
{
	/*
	 * Raise the clock input to the EEPROM
	 * (setting the SK bit), then delay
	 */
	*eec = *eec | IXGBE_EEC_SK;
	FUNC1(hw, IXGBE_EEC, *eec);
	FUNC0(hw);
	FUNC2(1);
}