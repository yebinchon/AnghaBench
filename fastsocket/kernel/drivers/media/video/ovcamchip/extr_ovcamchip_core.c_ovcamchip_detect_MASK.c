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
struct i2c_client {int addr; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct i2c_client*) ; 
 scalar_t__ FUNC3 (struct i2c_client*) ; 
 scalar_t__ FUNC4 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *c)
{
	/* Ideally we would just try a single register write and see if it NAKs.
	 * That isn't possible since the OV518 can't report I2C transaction
	 * failures. So, we have to try to initialize the chip (i.e. reset it
	 * and check the ID registers) to detect its presence. */

	/* Test for 7xx0 */
	FUNC0(3, "Testing for 0V7xx0");
	if (FUNC2(c) < 0)
		return -ENODEV;
	/* 7-bit addresses with bit 0 set are for the OV7xx0 */
	if (c->addr & 1) {
		if (FUNC4(c) < 0) {
			FUNC1("Failed to init OV7xx0");
			return -EIO;
		}
		return 0;
	}
	/* Test for 6xx0 */
	FUNC0(3, "Testing for 0V6xx0");
	if (FUNC3(c) < 0) {
		FUNC1("Failed to init OV6xx0");
		return -EIO;
	}
	return 0;
}