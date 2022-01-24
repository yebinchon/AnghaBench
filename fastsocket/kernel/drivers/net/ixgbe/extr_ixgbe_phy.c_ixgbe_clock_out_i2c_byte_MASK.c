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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_I2CCTL ; 
 int /*<<< orphan*/  IXGBE_I2C_DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static s32 FUNC4(struct ixgbe_hw *hw, u8 data)
{
	s32 status = 0;
	s32 i;
	u32 i2cctl;
	bool bit = false;

	for (i = 7; i >= 0; i--) {
		bit = (data >> i) & 0x1;
		status = FUNC3(hw, bit);

		if (status != 0)
			break;
	}

	/* Release SDA line (set high) */
	i2cctl = FUNC0(hw, IXGBE_I2CCTL);
	i2cctl |= IXGBE_I2C_DATA_OUT;
	FUNC2(hw, IXGBE_I2CCTL, i2cctl);
	FUNC1(hw);

	return status;
}