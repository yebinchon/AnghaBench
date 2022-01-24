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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ IXGBE_ERR_I2C ; 
 int /*<<< orphan*/  IXGBE_I2CCTL ; 
 int /*<<< orphan*/  IXGBE_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXGBE_I2C_T_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC6(struct ixgbe_hw *hw, bool data)
{
	s32 status;
	u32 i2cctl = FUNC0(hw, IXGBE_I2CCTL);

	status = FUNC4(hw, &i2cctl, data);
	if (status == 0) {
		FUNC3(hw, &i2cctl);

		/* Minimum high period of clock is 4us */
		FUNC5(IXGBE_I2C_T_HIGH);

		FUNC2(hw, &i2cctl);

		/* Minimum low period of clock is 4.7 us.
		 * This also takes care of the data hold time.
		 */
		FUNC5(IXGBE_I2C_T_LOW);
	} else {
		status = IXGBE_ERR_I2C;
		FUNC1(hw, "I2C data was not set to %X\n", data);
	}

	return status;
}