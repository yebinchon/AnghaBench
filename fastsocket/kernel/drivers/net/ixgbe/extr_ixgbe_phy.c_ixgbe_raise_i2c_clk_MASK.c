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
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_I2CCTL ; 
 scalar_t__ IXGBE_I2C_CLK_IN ; 
 scalar_t__ IXGBE_I2C_CLK_OUT ; 
 scalar_t__ IXGBE_I2C_CLOCK_STRETCHING_TIMEOUT ; 
 int /*<<< orphan*/  IXGBE_I2C_T_RISE ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ixgbe_hw *hw, u32 *i2cctl)
{
	u32 i = 0;
	u32 timeout = IXGBE_I2C_CLOCK_STRETCHING_TIMEOUT;
	u32 i2cctl_r = 0;

	for (i = 0; i < timeout; i++) {
		*i2cctl |= IXGBE_I2C_CLK_OUT;
		FUNC2(hw, IXGBE_I2CCTL, *i2cctl);
		FUNC1(hw);
		/* SCL rise time (1000ns) */
		FUNC3(IXGBE_I2C_T_RISE);

		i2cctl_r = FUNC0(hw, IXGBE_I2CCTL);
		if (i2cctl_r & IXGBE_I2C_CLK_IN)
			break;
	}
}