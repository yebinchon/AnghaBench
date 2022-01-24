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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned char FUNC5 () ; 

unsigned char
FUNC6(void)
{
	unsigned char aBitByte = 0;
	int i;

	/* Switch off I2C to get bit */
	FUNC3();
	FUNC2();
	FUNC1(CLOCK_HIGH_TIME/2);

	/* Get bit */
	aBitByte |= FUNC5();

	/* Enable I2C */
	FUNC4();
	FUNC1(CLOCK_LOW_TIME/2);

	for (i = 1; i < 8; i++) {
		aBitByte <<= 1;
		/* Clock pulse */
		FUNC0(I2C_CLOCK_HIGH);
		FUNC1(CLOCK_HIGH_TIME);
		FUNC0(I2C_CLOCK_LOW);
		FUNC1(CLOCK_LOW_TIME);

		/* Switch off I2C to get bit */
		FUNC3();
		FUNC2();
		FUNC1(CLOCK_HIGH_TIME/2);

		/* Get bit */
		aBitByte |= FUNC5();

		/* Enable I2C */
		FUNC4();
		FUNC1(CLOCK_LOW_TIME/2);
	}
	FUNC0(I2C_CLOCK_HIGH);
	FUNC1(CLOCK_HIGH_TIME);

        /*
	 * we leave the clock low, getbyte is usually followed
	 * by sendack/nack, they assume the clock to be low
	 */
        FUNC0(I2C_CLOCK_LOW);
	return aBitByte;
}