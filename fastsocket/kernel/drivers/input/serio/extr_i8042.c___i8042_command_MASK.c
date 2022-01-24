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
 int I8042_CMD_AUX_LOOP ; 
 int I8042_STR_AUXDATA ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ i8042_noloop ; 
 unsigned char FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 

__attribute__((used)) static int FUNC7(unsigned char *param, int command)
{
	int i, error;

	if (i8042_noloop && command == I8042_CMD_AUX_LOOP)
		return -1;

	error = FUNC4();
	if (error)
		return error;

	FUNC0("%02x -> i8042 (command)", command & 0xff);
	FUNC5(command & 0xff);

	for (i = 0; i < ((command >> 12) & 0xf); i++) {
		error = FUNC4();
		if (error)
			return error;
		FUNC0("%02x -> i8042 (parameter)", param[i]);
		FUNC6(param[i]);
	}

	for (i = 0; i < ((command >> 8) & 0xf); i++) {
		error = FUNC3();
		if (error) {
			FUNC0("     -- i8042 (timeout)");
			return error;
		}

		if (command == I8042_CMD_AUX_LOOP &&
		    !(FUNC2() & I8042_STR_AUXDATA)) {
			FUNC0("     -- i8042 (auxerr)");
			return -1;
		}

		param[i] = FUNC1();
		FUNC0("%02x <- i8042 (return)", param[i]);
	}

	return 0;
}