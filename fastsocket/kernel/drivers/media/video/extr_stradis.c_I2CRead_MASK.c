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
 int /*<<< orphan*/  FUNC0 (struct saa7146*) ; 
 int SAA7146_I2C_BUSY ; 
 int SAA7146_I2C_ERR ; 
 int /*<<< orphan*/  SAA7146_I2C_STATUS ; 
 int /*<<< orphan*/  SAA7146_I2C_TRANSFER ; 
 int /*<<< orphan*/  SAA7146_MC2 ; 
 int SAA7146_MC2_UPLD_I2C ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct saa7146 *saa, unsigned char addr,
		   unsigned char subaddr, int dosub)
{
	int i;

	if (FUNC2(SAA7146_I2C_STATUS) & 0x3c)
		FUNC0(saa);
	for (i = 0;
		i < 1000 && (FUNC2(SAA7146_I2C_STATUS) & SAA7146_I2C_BUSY);
		i++)
		FUNC4();
	if (i == 1000)
		FUNC0(saa);
	if (dosub)
		FUNC3(((addr & 0xfe) << 24) | (((addr | 1) & 0xff) << 8) |
			((subaddr & 0xff) << 16) | 0xed, SAA7146_I2C_TRANSFER);
	else
		FUNC3(((addr & 0xfe) << 24) | (((addr | 1) & 0xff) << 16) |
			0xf1, SAA7146_I2C_TRANSFER);
	FUNC3((SAA7146_MC2_UPLD_I2C << 16) |
		 SAA7146_MC2_UPLD_I2C, SAA7146_MC2);
	/* wait for i2c registers to be programmed */
	for (i = 0; i < 1000 &&
	     !(FUNC2(SAA7146_MC2) & SAA7146_MC2_UPLD_I2C); i++)
		FUNC4();
	/* wait for valid data */
	for (i = 0; i < 1000 &&
	     (FUNC2(SAA7146_I2C_STATUS) & SAA7146_I2C_BUSY); i++)
		FUNC4();
	if (FUNC2(SAA7146_I2C_STATUS) & SAA7146_I2C_ERR)
		return -1;
	if (i == 1000)
		FUNC1("i2c setup read timeout\n");
	FUNC3(0x41, SAA7146_I2C_TRANSFER);
	FUNC3((SAA7146_MC2_UPLD_I2C << 16) |
		 SAA7146_MC2_UPLD_I2C, SAA7146_MC2);
	/* wait for i2c registers to be programmed */
	for (i = 0; i < 1000 &&
	     !(FUNC2(SAA7146_MC2) & SAA7146_MC2_UPLD_I2C); i++)
		FUNC4();
	/* wait for valid data */
	for (i = 0; i < 1000 &&
	     (FUNC2(SAA7146_I2C_TRANSFER) & SAA7146_I2C_BUSY); i++)
		FUNC4();
	if (FUNC2(SAA7146_I2C_TRANSFER) & SAA7146_I2C_ERR)
		return -1;
	if (i == 1000)
		FUNC1("i2c read timeout\n");
	return ((FUNC2(SAA7146_I2C_TRANSFER) >> 24) & 0xff);
}