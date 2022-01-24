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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int GENERIC_REG_ID_HIGH ; 
 int GENERIC_REG_ID_LOW ; 
 int I2C_DETECT_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct i2c_client*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *c)
{
	int i, success;
	unsigned char high, low;

	/* Reset the chip */
	FUNC3(c, 0x12, 0x80);

	/* Wait for it to initialize */
	FUNC1(150);

	for (i = 0, success = 0; i < I2C_DETECT_RETRIES && !success; i++) {
		if (FUNC2(c, GENERIC_REG_ID_HIGH, &high) >= 0) {
			if (FUNC2(c, GENERIC_REG_ID_LOW, &low) >= 0) {
				if (high == 0x7F && low == 0xA2) {
					success = 1;
					continue;
				}
			}
		}

		/* Reset the chip */
		FUNC3(c, 0x12, 0x80);

		/* Wait for it to initialize */
		FUNC1(150);

		/* Dummy read to sync I2C */
		FUNC2(c, 0x00, &low);
	}

	if (!success)
		return -EIO;

	FUNC0(1, "I2C synced in %d attempt(s)", i);

	return 0;
}