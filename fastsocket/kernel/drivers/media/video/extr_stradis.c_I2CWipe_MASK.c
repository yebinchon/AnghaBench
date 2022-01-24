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
struct saa7146 {int dummy; } ;

/* Variables and functions */
 int SAA7146_I2C_ABORT ; 
 int /*<<< orphan*/  SAA7146_I2C_STATUS ; 
 int /*<<< orphan*/  SAA7146_MC2 ; 
 int SAA7146_MC2_UPLD_I2C ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct saa7146 *saa)
{
	int i;
	/* set i2c to ~=100kHz, abort transfer, clear busy */
	FUNC1(0x600 | SAA7146_I2C_ABORT, SAA7146_I2C_STATUS);
	FUNC1((SAA7146_MC2_UPLD_I2C << 16) |
		 SAA7146_MC2_UPLD_I2C, SAA7146_MC2);
	/* wait for i2c registers to be programmed */
	for (i = 0; i < 1000 &&
	     !(FUNC0(SAA7146_MC2) & SAA7146_MC2_UPLD_I2C); i++)
		FUNC2();
	FUNC1(0x600, SAA7146_I2C_STATUS);
	FUNC1((SAA7146_MC2_UPLD_I2C << 16) |
		 SAA7146_MC2_UPLD_I2C, SAA7146_MC2);
	/* wait for i2c registers to be programmed */
	for (i = 0; i < 1000 &&
	     !(FUNC0(SAA7146_MC2) & SAA7146_MC2_UPLD_I2C); i++)
		FUNC2();
	FUNC1(0x600, SAA7146_I2C_STATUS);
	FUNC1((SAA7146_MC2_UPLD_I2C << 16) |
		 SAA7146_MC2_UPLD_I2C, SAA7146_MC2);
	/* wait for i2c registers to be programmed */
	for (i = 0; i < 1000 &&
	     !(FUNC0(SAA7146_MC2) & SAA7146_MC2_UPLD_I2C); i++)
		FUNC2();
}