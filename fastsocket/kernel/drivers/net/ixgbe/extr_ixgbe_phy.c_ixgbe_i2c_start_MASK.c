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
 int /*<<< orphan*/  IXGBE_I2C_T_HD_STA ; 
 int /*<<< orphan*/  IXGBE_I2C_T_LOW ; 
 int /*<<< orphan*/  IXGBE_I2C_T_SU_STA ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_hw *hw)
{
	u32 i2cctl = FUNC0(hw, IXGBE_I2CCTL);

	/* Start condition must begin with data and clock high */
	FUNC3(hw, &i2cctl, 1);
	FUNC2(hw, &i2cctl);

	/* Setup time for start condition (4.7us) */
	FUNC4(IXGBE_I2C_T_SU_STA);

	FUNC3(hw, &i2cctl, 0);

	/* Hold time for start condition (4us) */
	FUNC4(IXGBE_I2C_T_HD_STA);

	FUNC1(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC4(IXGBE_I2C_T_LOW);

}