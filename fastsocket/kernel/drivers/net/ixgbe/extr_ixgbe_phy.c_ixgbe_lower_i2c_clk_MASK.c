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
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_I2CCTL ; 
 int /*<<< orphan*/  IXGBE_I2C_CLK_OUT ; 
 int /*<<< orphan*/  IXGBE_I2C_T_FALL ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_hw *hw, u32 *i2cctl)
{

	*i2cctl &= ~IXGBE_I2C_CLK_OUT;

	FUNC1(hw, IXGBE_I2CCTL, *i2cctl);
	FUNC0(hw);

	/* SCL fall time (300ns) */
	FUNC2(IXGBE_I2C_T_FALL);
}