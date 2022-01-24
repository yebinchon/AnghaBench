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
typedef  unsigned char u32 ;
struct saa7146 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct saa7146*) ; 
 int SAA7146_I2C_BUSY ; 
 int /*<<< orphan*/  SAA7146_I2C_STATUS ; 
 int /*<<< orphan*/  SAA7146_I2C_TRANSFER ; 
 int /*<<< orphan*/  SAA7146_MC2 ; 
 int SAA7146_MC2_UPLD_I2C ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct saa7146 *saa, unsigned char addr, unsigned char b1,
		    unsigned char b2, int both)
{
	int i;
	u32 data;

	if (FUNC1(SAA7146_I2C_STATUS) & 0x3c)
		FUNC0(saa);
	for (i = 0; i < 1000 &&
	     (FUNC1(SAA7146_I2C_STATUS) & SAA7146_I2C_BUSY); i++)
		FUNC3();
	if (i == 1000)
		FUNC0(saa);
	data = ((addr & 0xfe) << 24) | ((b1 & 0xff) << 16);
	if (both)
		data |= ((b2 & 0xff) << 8) | 0xe5;
	else
		data |= 0xd1;
	FUNC2(data, SAA7146_I2C_TRANSFER);
	FUNC2((SAA7146_MC2_UPLD_I2C << 16) | SAA7146_MC2_UPLD_I2C,
		 SAA7146_MC2);
	return 0;
}