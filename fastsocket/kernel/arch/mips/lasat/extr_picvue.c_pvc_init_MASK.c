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
 int /*<<< orphan*/  AUTO_INC ; 
 int /*<<< orphan*/  DISP_ON ; 
 int EIGHT_BYTE ; 
 int LARGE_FONT ; 
 int ONE_LINE ; 
 int PVC_NLINES ; 
 int SMALL_FONT ; 
 int TWO_LINES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(void)
{
	u8 cmd = EIGHT_BYTE;

	if (PVC_NLINES == 2)
		cmd |= (SMALL_FONT|TWO_LINES);
	else
		cmd |= (LARGE_FONT|ONE_LINE);
	FUNC3(cmd);
	FUNC1(DISP_ON);
	FUNC2(AUTO_INC);

	FUNC0();
	FUNC4("Display", 0);
	FUNC4("Initialized", 1);

	return 0;
}