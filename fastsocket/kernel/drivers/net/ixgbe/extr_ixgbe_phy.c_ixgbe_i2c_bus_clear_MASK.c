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
 int /*<<< orphan*/  IXGBE_I2CCTL ; 
 int /*<<< orphan*/  IXGBE_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXGBE_I2C_T_LOW ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ixgbe_hw *hw)
{
	u32 i2cctl = FUNC0(hw, IXGBE_I2CCTL);
	u32 i;

	FUNC1(hw);

	FUNC5(hw, &i2cctl, 1);

	for (i = 0; i < 9; i++) {
		FUNC4(hw, &i2cctl);

		/* Min high period of clock is 4us */
		FUNC6(IXGBE_I2C_T_HIGH);

		FUNC3(hw, &i2cctl);

		/* Min low period of clock is 4.7us*/
		FUNC6(IXGBE_I2C_T_LOW);
	}

	FUNC1(hw);

	/* Put the i2c bus back to default state */
	FUNC2(hw);
}