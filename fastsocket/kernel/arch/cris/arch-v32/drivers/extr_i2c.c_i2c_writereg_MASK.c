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
 int /*<<< orphan*/  i2c_lock ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC8(unsigned char theSlave, unsigned char theReg,
	     unsigned char theValue)
{
	int error, cntr = 3;
	unsigned long flags;

	FUNC6(&i2c_lock, flags);

	do {
		error = 0;

		FUNC4();
		/*
		 * send slave address
		 */
		FUNC3((theSlave & 0xfe));
		/*
		 * wait for ack
		 */
		if(!FUNC2())
			error = 1;
		/*
		 * now select register
		 */
		FUNC1();
		FUNC3(theReg);
		/*
		 * now it's time to wait for ack
		 */
		if(!FUNC2())
			error |= 2;
		/*
		 * send register register data
		 */
		FUNC3(theValue);
		/*
		 * now it's time to wait for ack
		 */
		if(!FUNC2())
			error |= 4;
		/*
		 * end byte stream
		 */
		FUNC5();
	} while(error && cntr--);

	FUNC0(CLOCK_LOW_TIME);

	FUNC7(&i2c_lock, flags);

	return -error;
}