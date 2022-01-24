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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char** numcol_toString ; 
 char** numrow_toString ; 

__attribute__((used)) static void FUNC7(int slot_row, u16 mtr)
{
	int ans;

	ans = FUNC0(mtr);

	FUNC6("\tMTR%d=0x%x:  DIMMs are %s\n", slot_row, mtr,
		ans ? "Present" : "NOT Present");
	if (!ans)
		return;

	FUNC6("\t\tWIDTH: x%d\n", FUNC5(mtr));
	FUNC6("\t\tNUMBANK: %d bank(s)\n", FUNC4(mtr));
	FUNC6("\t\tNUMRANK: %s\n", FUNC2(mtr) ? "double" : "single");
	FUNC6("\t\tNUMROW: %s\n", numrow_toString[FUNC3(mtr)]);
	FUNC6("\t\tNUMCOL: %s\n", numcol_toString[FUNC1(mtr)]);
}