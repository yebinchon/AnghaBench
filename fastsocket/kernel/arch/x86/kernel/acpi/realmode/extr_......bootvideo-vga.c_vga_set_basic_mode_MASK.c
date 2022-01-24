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
struct biosregs {int ax; int al; } ;

/* Variables and functions */
 int do_restore ; 
 int /*<<< orphan*/  FUNC0 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct biosregs*,struct biosregs*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC4(void)
{
	struct biosregs ireg, oreg;
	u8 rows;
	u8 mode;

	FUNC0(&ireg);

	ireg.ax = 0x0f00;
	FUNC1(0x10, &ireg, &oreg);
	mode = oreg.al;

	FUNC3(0);
	rows = FUNC2(0x484);	/* rows minus one */

	if ((oreg.ax == 0x5003 || oreg.ax == 0x5007) &&
	    (rows == 0 || rows == 24))
		return mode;

	if (mode != 3 && mode != 7)
		mode = 3;

	/* Set the mode */
	ireg.ax = mode;		/* AH=0: set mode */
	FUNC1(0x10, &ireg, NULL);
	do_restore = 1;
	return mode;
}