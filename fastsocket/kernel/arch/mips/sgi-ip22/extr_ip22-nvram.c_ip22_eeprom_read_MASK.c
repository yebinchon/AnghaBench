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
 int EEPROM_DATI ; 
 int EEPROM_ECLK ; 
 int EEPROM_EPROT ; 
 int /*<<< orphan*/  EEPROM_READ ; 
 int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*) ; 

unsigned short FUNC6(unsigned int *ctrl, int reg)
{
	unsigned short res = 0;
	int i;

	FUNC1(FUNC0(ctrl) & ~EEPROM_EPROT, ctrl);
	FUNC5(ctrl);
	FUNC3(ctrl, EEPROM_READ, reg);

	/* clock the data ouf of serial mem */
	for (i = 0; i < 16; i++) {
		FUNC1(FUNC0(ctrl) & ~EEPROM_ECLK, ctrl);
		FUNC2();
		FUNC1(FUNC0(ctrl) | EEPROM_ECLK, ctrl);
		FUNC2();
		res <<= 1;
		if (FUNC0(ctrl) & EEPROM_DATI)
			res |= 1;
	}

	FUNC4(ctrl);

	return res;
}