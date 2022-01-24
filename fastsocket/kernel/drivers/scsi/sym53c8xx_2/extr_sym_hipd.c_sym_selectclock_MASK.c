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
typedef  int u_char ;
struct sym_hcb {int multiplier; int features; } ;

/* Variables and functions */
 int DBLEN ; 
 int DBLSEL ; 
 int FE_LCKFRQ ; 
 int HSC ; 
 int FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int LCKFRQ ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nc_mbox1 ; 
 int /*<<< orphan*/  nc_scntl3 ; 
 int /*<<< orphan*/  nc_stest1 ; 
 int /*<<< orphan*/  nc_stest3 ; 
 int /*<<< orphan*/  nc_stest4 ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (struct sym_hcb*) ; 
 int sym_verbose ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct sym_hcb *np, u_char scntl3)
{
	/*
	 *  If multiplier not present or not selected, leave here.
	 */
	if (np->multiplier <= 1) {
		FUNC1(np, nc_scntl3, scntl3);
		return;
	}

	if (sym_verbose >= 2)
		FUNC2 ("%s: enabling clock multiplier\n", FUNC3(np));

	FUNC1(np, nc_stest1, DBLEN);	   /* Enable clock multiplier */
	/*
	 *  Wait for the LCKFRQ bit to be set if supported by the chip.
	 *  Otherwise wait 50 micro-seconds (at least).
	 */
	if (np->features & FE_LCKFRQ) {
		int i = 20;
		while (!(FUNC0(np, nc_stest4) & LCKFRQ) && --i > 0)
			FUNC4(20);
		if (!i)
			FUNC2("%s: the chip cannot lock the frequency\n",
				FUNC3(np));
	} else {
		FUNC0(np, nc_mbox1);
		FUNC4(50+10);
	}
	FUNC1(np, nc_stest3, HSC);		/* Halt the scsi clock	*/
	FUNC1(np, nc_scntl3, scntl3);
	FUNC1(np, nc_stest1, (DBLEN|DBLSEL));/* Select clock multiplier	*/
	FUNC1(np, nc_stest3, 0x00);		/* Restart scsi clock 	*/
}