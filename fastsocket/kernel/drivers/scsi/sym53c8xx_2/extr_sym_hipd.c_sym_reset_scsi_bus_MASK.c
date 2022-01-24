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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u32 ;
struct sym_hcb {int rv_dcntl; int features; int /*<<< orphan*/  maxwide; } ;

/* Variables and functions */
 int CRST ; 
 int FE_WIDE ; 
 int FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int IRQM ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RST ; 
 int SYM_SETUP_SCSI_BUS_CHECK ; 
 int TE ; 
 int /*<<< orphan*/  nc_dcntl ; 
 int /*<<< orphan*/  nc_mbox1 ; 
 int /*<<< orphan*/  nc_sbcl ; 
 int /*<<< orphan*/  nc_sbdl ; 
 int /*<<< orphan*/  nc_scntl1 ; 
 int /*<<< orphan*/  nc_sien ; 
 int /*<<< orphan*/  nc_sstat0 ; 
 int /*<<< orphan*/  nc_sstat2 ; 
 int /*<<< orphan*/  nc_stest3 ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 char* FUNC5 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(struct sym_hcb *np, int enab_int)
{
	u32 term;
	int retv = 0;

	FUNC6(np);	/* Soft reset the chip */
	if (enab_int)
		FUNC3(np, nc_sien, RST);
	/*
	 *  Enable Tolerant, reset IRQD if present and 
	 *  properly set IRQ mode, prior to resetting the bus.
	 */
	FUNC2(np, nc_stest3, TE);
	FUNC2(np, nc_dcntl, (np->rv_dcntl & IRQM));
	FUNC2(np, nc_scntl1, CRST);
	FUNC0(np, nc_mbox1);
	FUNC7(200);

	if (!SYM_SETUP_SCSI_BUS_CHECK)
		goto out;
	/*
	 *  Check for no terminators or SCSI bus shorts to ground.
	 *  Read SCSI data bus, data parity bits and control signals.
	 *  We are expecting RESET to be TRUE and other signals to be 
	 *  FALSE.
	 */
	term =	FUNC0(np, nc_sstat0);
	term =	((term & 2) << 7) + ((term & 1) << 17);	/* rst sdp0 */
	term |= ((FUNC0(np, nc_sstat2) & 0x01) << 26) |	/* sdp1     */
		((FUNC1(np, nc_sbdl) & 0xff)   << 9)  |	/* d7-0     */
		((FUNC1(np, nc_sbdl) & 0xff00) << 10) |	/* d15-8    */
		FUNC0(np, nc_sbcl);	/* req ack bsy sel atn msg cd io    */

	if (!np->maxwide)
		term &= 0x3ffff;

	if (term != (2<<7)) {
		FUNC4("%s: suspicious SCSI data while resetting the BUS.\n",
			FUNC5(np));
		FUNC4("%s: %sdp0,d7-0,rst,req,ack,bsy,sel,atn,msg,c/d,i/o = "
			"0x%lx, expecting 0x%lx\n",
			FUNC5(np),
			(np->features & FE_WIDE) ? "dp1,d15-8," : "",
			(u_long)term, (u_long)(2<<7));
		if (SYM_SETUP_SCSI_BUS_CHECK == 1)
			retv = 1;
	}
out:
	FUNC2(np, nc_scntl1, 0);
	return retv;
}