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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char** numcol_toString ; 
 char** numrow_toString ; 

__attribute__((used)) static void FUNC8(int slot_row, u16 mtr)
{
	int ans;

	ans = FUNC1(mtr);

	FUNC7("\tMTR%d=0x%x:  DIMMs are %s\n", slot_row, mtr,
		ans ? "Present" : "NOT Present");
	if (!ans)
		return;

	FUNC7("\t\tWIDTH: x%d\n", FUNC6(mtr));

	FUNC7("\t\tELECTRICAL THROTTLING is %s\n",
		FUNC0(mtr) ? "enabled" : "disabled");

	FUNC7("\t\tNUMBANK: %d bank(s)\n", FUNC5(mtr));
	FUNC7("\t\tNUMRANK: %s\n", FUNC3(mtr) ? "double" : "single");
	FUNC7("\t\tNUMROW: %s\n", numrow_toString[FUNC4(mtr)]);
	FUNC7("\t\tNUMCOL: %s\n", numcol_toString[FUNC2(mtr)]);
}