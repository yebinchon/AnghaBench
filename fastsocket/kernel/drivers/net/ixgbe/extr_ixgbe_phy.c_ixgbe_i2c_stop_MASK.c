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
 int /*<<< orphan*/  IXGBE_I2C_T_BUF ; 
 int /*<<< orphan*/  IXGBE_I2C_T_SU_STO ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ixgbe_hw *hw)
{
	u32 i2cctl = FUNC0(hw, IXGBE_I2CCTL);

	/* Stop condition must begin with data low and clock high */
	FUNC2(hw, &i2cctl, 0);
	FUNC1(hw, &i2cctl);

	/* Setup time for stop condition (4us) */
	FUNC3(IXGBE_I2C_T_SU_STO);

	FUNC2(hw, &i2cctl, 1);

	/* bus free time between stop and start (4.7us)*/
	FUNC3(IXGBE_I2C_T_BUF);
}