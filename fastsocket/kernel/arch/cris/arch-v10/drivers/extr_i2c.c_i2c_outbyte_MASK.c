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

/* Variables and functions */
 int CLOCK_HIGH_TIME ; 
 int CLOCK_LOW_TIME ; 
 int /*<<< orphan*/  I2C_CLOCK_HIGH ; 
 int /*<<< orphan*/  I2C_CLOCK_LOW ; 
 int /*<<< orphan*/  I2C_DATA_HIGH ; 
 int /*<<< orphan*/  I2C_DATA_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(unsigned char x)
{
	int i;

	FUNC4();

	for (i = 0; i < 8; i++) {
		if (x & 0x80) {
			FUNC1(I2C_DATA_HIGH);
		} else {
			FUNC1(I2C_DATA_LOW);
		}
		
		FUNC2(CLOCK_LOW_TIME/2);
		FUNC0(I2C_CLOCK_HIGH);
		FUNC2(CLOCK_HIGH_TIME);
		FUNC0(I2C_CLOCK_LOW);
		FUNC2(CLOCK_LOW_TIME/2);
		x <<= 1;
	}
	FUNC1(I2C_DATA_LOW);
	FUNC2(CLOCK_LOW_TIME/2);

	/*
	 * enable input
	 */
	FUNC3();
}