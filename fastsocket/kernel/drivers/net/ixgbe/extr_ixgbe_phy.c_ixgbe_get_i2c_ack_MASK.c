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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_I2C ; 
 int /*<<< orphan*/  IXGBE_I2CCTL ; 
 int IXGBE_I2C_T_HIGH ; 
 int IXGBE_I2C_T_LOW ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,char*) ; 
 int FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static s32 FUNC6(struct ixgbe_hw *hw)
{
	s32 status = 0;
	u32 i = 0;
	u32 i2cctl = FUNC0(hw, IXGBE_I2CCTL);
	u32 timeout = 10;
	bool ack = true;

	FUNC4(hw, &i2cctl);


	/* Minimum high period of clock is 4us */
	FUNC5(IXGBE_I2C_T_HIGH);

	/* Poll for ACK.  Note that ACK in I2C spec is
	 * transition from 1 to 0 */
	for (i = 0; i < timeout; i++) {
		i2cctl = FUNC0(hw, IXGBE_I2CCTL);
		ack = FUNC2(&i2cctl);

		FUNC5(1);
		if (ack == 0)
			break;
	}

	if (ack == 1) {
		FUNC1(hw, "I2C ack was not received.\n");
		status = IXGBE_ERR_I2C;
	}

	FUNC3(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC5(IXGBE_I2C_T_LOW);

	return status;
}