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
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned char FUNC1 () ; 
 int /*<<< orphan*/  i2c_lock ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC11(unsigned char theSlave, void *data, size_t nbytes)
{
	unsigned char b = 0;
	unsigned char bytes_read = 0;
	int error, cntr = 3;
	unsigned long flags;

	FUNC9(&i2c_lock, flags);

	do {
		error = 0;
		FUNC8(data, 0, nbytes);
		/*
		 * generate start condition
		 */
		FUNC5();
		/*
		 * send slave address
		 */
		FUNC2((theSlave | 0x01));
		/*
		 * wait for ack
		 */
		if (!FUNC0())
			error = 1;
		/*
		 * fetch data
		 */
		for (bytes_read = 0; bytes_read < nbytes; bytes_read++) {
			b = FUNC1();
			FUNC7(data + bytes_read, &b, sizeof b);

			if (bytes_read < (nbytes - 1))
				FUNC3();
		}
		/*
		 * last received byte needs to be nacked
		 * instead of acked
		 */
		FUNC4();
		/*
		 * end sequence
		 */
		FUNC6();
	} while (error && cntr--);

	FUNC10(&i2c_lock, flags);

	return -error;
}