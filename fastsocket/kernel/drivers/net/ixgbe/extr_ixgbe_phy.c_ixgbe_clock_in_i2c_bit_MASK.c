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
 int /*<<< orphan*/  IXGBE_I2CCTL ; 
 int /*<<< orphan*/  IXGBE_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXGBE_I2C_T_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw, bool *data)
{
	u32 i2cctl = FUNC0(hw, IXGBE_I2CCTL);

	FUNC3(hw, &i2cctl);

	/* Minimum high period of clock is 4us */
	FUNC4(IXGBE_I2C_T_HIGH);

	i2cctl = FUNC0(hw, IXGBE_I2CCTL);
	*data = FUNC1(&i2cctl);

	FUNC2(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC4(IXGBE_I2C_T_LOW);

	return 0;
}