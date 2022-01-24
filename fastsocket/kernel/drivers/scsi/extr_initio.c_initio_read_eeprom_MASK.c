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
typedef  int u8 ;

/* Variables and functions */
 scalar_t__ TUL_GCTRL ; 
 int TUL_GCTRL_EEPROM_BIT ; 
 int /*<<< orphan*/  i91unvram ; 
 int /*<<< orphan*/ * i91unvramp ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(unsigned long base)
{
	u8 gctrl;

	i91unvramp = &i91unvram;
	/* Enable EEProm programming */
	gctrl = FUNC0(base + TUL_GCTRL);
	FUNC3(gctrl | TUL_GCTRL_EEPROM_BIT, base + TUL_GCTRL);
	if (FUNC1(base) != 1) {
		FUNC2(base);	/* setup default pattern */
		FUNC1(base);	/* load again  */
	}
	/* Disable EEProm programming */
	gctrl = FUNC0(base + TUL_GCTRL);
	FUNC3(gctrl & ~TUL_GCTRL_EEPROM_BIT, base + TUL_GCTRL);
}