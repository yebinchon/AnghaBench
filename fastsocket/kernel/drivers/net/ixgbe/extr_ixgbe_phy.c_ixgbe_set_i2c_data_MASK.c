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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_I2C ; 
 int /*<<< orphan*/  IXGBE_I2CCTL ; 
 int /*<<< orphan*/  IXGBE_I2C_DATA_OUT ; 
 scalar_t__ IXGBE_I2C_T_FALL ; 
 scalar_t__ IXGBE_I2C_T_RISE ; 
 scalar_t__ IXGBE_I2C_T_SU_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static s32 FUNC6(struct ixgbe_hw *hw, u32 *i2cctl, bool data)
{
	s32 status = 0;

	if (data)
		*i2cctl |= IXGBE_I2C_DATA_OUT;
	else
		*i2cctl &= ~IXGBE_I2C_DATA_OUT;

	FUNC2(hw, IXGBE_I2CCTL, *i2cctl);
	FUNC1(hw);

	/* Data rise/fall (1000ns/300ns) and set-up time (250ns) */
	FUNC5(IXGBE_I2C_T_RISE + IXGBE_I2C_T_FALL + IXGBE_I2C_T_SU_DATA);

	/* Verify data was set correctly */
	*i2cctl = FUNC0(hw, IXGBE_I2CCTL);
	if (data != FUNC4(i2cctl)) {
		status = IXGBE_ERR_I2C;
		FUNC3(hw, "Error - I2C data was not set to %X.\n", data);
	}

	return status;
}