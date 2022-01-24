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
 int /*<<< orphan*/  i2c_lock ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC8(unsigned char theSlave, void *data, size_t nbytes)
{
	int error, cntr = 3;
	unsigned char bytes_wrote = 0;
	unsigned char value;
	unsigned long flags;

	FUNC6(&i2c_lock, flags);

	do {
		error = 0;

		FUNC3();
		/*
		 * send slave address
		 */
		FUNC2((theSlave & 0xfe));
		/*
		 * wait for ack
		 */
		if (!FUNC1())
			error = 1;
		/*
		 * send data
		 */
		for (bytes_wrote = 0; bytes_wrote < nbytes; bytes_wrote++) {
			FUNC5(&value, data + bytes_wrote, sizeof value);
			FUNC2(value);
			/*
			 * now it's time to wait for ack
			 */
			if (!FUNC1())
				error |= 4;
		}
		/*
		 * end byte stream
		 */
		FUNC4();

	} while (error && cntr--);

	FUNC0(CLOCK_LOW_TIME);

	FUNC7(&i2c_lock, flags);

	return -error;
}