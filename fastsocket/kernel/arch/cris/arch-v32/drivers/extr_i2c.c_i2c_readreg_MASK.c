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
 int /*<<< orphan*/  CLOCK_LOW_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned char FUNC3 () ; 
 int /*<<< orphan*/  i2c_lock ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned char
FUNC10(unsigned char theSlave, unsigned char theReg)
{
	unsigned char b = 0;
	int error, cntr = 3;
	unsigned long flags;

	FUNC8(&i2c_lock, flags);

	do {
		error = 0;
		/*
		 * generate start condition
		 */
		FUNC6();

		/*
		 * send slave address
		 */
		FUNC4((theSlave & 0xfe));
		/*
		 * wait for ack
		 */
		if(!FUNC2())
			error = 1;
		/*
		 * now select register
		 */
		FUNC1();
		FUNC4(theReg);
		/*
		 * now it's time to wait for ack
		 */
		if(!FUNC2())
			error |= 2;
		/*
		 * repeat start condition
		 */
		FUNC0(CLOCK_LOW_TIME);
		FUNC6();
		/*
		 * send slave address
		 */
		FUNC4(theSlave | 0x01);
		/*
		 * wait for ack
		 */
		if(!FUNC2())
			error |= 4;
		/*
		 * fetch register
		 */
		b = FUNC3();
		/*
		 * last received byte needs to be nacked
		 * instead of acked
		 */
		FUNC5();
		/*
		 * end sequence
		 */
		FUNC7();

	} while(error && cntr--);

	FUNC9(&i2c_lock, flags);

	return b;
}