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
 int R_HEADER ; 
 int W_HEADER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(char *buffer, int eeprom_size, int size)
{
	int	i = 0, err;

	FUNC4();
	FUNC3(W_HEADER);
	FUNC0();

	/* EEPROM with size of more than 2K need two byte addressing */
	if (eeprom_size > 2048) {
		FUNC3(0x00);
		FUNC0();
	}

	FUNC4();
	FUNC3(R_HEADER);
	err = FUNC0();
	if (err == -1)
		return err;

	for (i = 0; i < size; i++) {
		*buffer++ = FUNC1();
		FUNC2();
	}

	/* Note : We should do some check if the buffer contains correct information */

	FUNC5();
}