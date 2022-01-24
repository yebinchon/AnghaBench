#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
typedef  int u32 ;
struct TYPE_7__ {int addr; int size; } ;
struct sym_pmc {int ret; TYPE_2__ sg; } ;
struct sym_hcb {int features; int rv_ctest3; int scripta_ba; int scripta_sz; int scriptb_ba; int scriptb_sz; int /*<<< orphan*/ * msgout; scalar_t__ scriptb0; scalar_t__ scripta0; } ;
struct TYPE_6__ {void* size; void* addr; } ;
struct TYPE_8__ {int sel_scntl3; } ;
struct TYPE_9__ {TYPE_1__ wresid; TYPE_3__ select; struct sym_pmc pm1; struct sym_pmc pm0; } ;
struct sym_ccb {TYPE_5__* cmd; int /*<<< orphan*/  lun; int /*<<< orphan*/  host_status; int /*<<< orphan*/  tag; TYPE_4__ phys; } ;
struct scsi_device {int /*<<< orphan*/  ppr; } ;
struct TYPE_10__ {struct scsi_device* device; } ;

/* Variables and functions */
 int CLF ; 
 int CSF ; 
 int DEBUG_FLAGS ; 
 int DEBUG_PHASE ; 
 int DEBUG_TINY ; 
 int DFS ; 
 int EWS ; 
 int FE_C10 ; 
 int FE_DFBC ; 
 int HF_ACT_PM ; 
 int HF_DP_SAVED ; 
 int HF_IN_PM0 ; 
 int HF_IN_PM1 ; 
 int /*<<< orphan*/  HF_PRT ; 
 int /*<<< orphan*/  HS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_TAG ; 
 int OLF ; 
 int OLF1 ; 
 int ORF ; 
 int ORF1 ; 
 int /*<<< orphan*/  FUNC4 (struct sym_hcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sym_hcb*,int) ; 
 int FUNC6 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int TE ; 
 int WSR ; 
 int /*<<< orphan*/  clrack ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  dispatch ; 
 int /*<<< orphan*/  ident_break ; 
 int /*<<< orphan*/  ident_break_atn ; 
 int /*<<< orphan*/  nc_ctest3 ; 
 int /*<<< orphan*/  nc_dbc ; 
 int /*<<< orphan*/  nc_dfbc ; 
 int /*<<< orphan*/  nc_dfifo ; 
 int /*<<< orphan*/  nc_dsa ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  nc_sbcl ; 
 int /*<<< orphan*/  nc_scntl2 ; 
 int /*<<< orphan*/  nc_sstat0 ; 
 int /*<<< orphan*/  nc_sstat2 ; 
 int /*<<< orphan*/  nc_stest3 ; 
 int /*<<< orphan*/  nego_bad_phase ; 
 int /*<<< orphan*/  pm0_data ; 
 int /*<<< orphan*/  pm1_data ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  send_ident ; 
 int /*<<< orphan*/  send_ppr ; 
 int /*<<< orphan*/  send_sdtr ; 
 int /*<<< orphan*/  send_wdtr ; 
 struct sym_ccb* FUNC11 (struct sym_hcb*,int) ; 
 char* FUNC12 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC14 (struct sym_hcb*,struct sym_ccb*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sym_hcb*) ; 
 int /*<<< orphan*/  wsr_ma_helper ; 

__attribute__((used)) static void FUNC16 (struct sym_hcb *np)
{
	u32	dbc;
	u32	rest;
	u32	dsp;
	u32	dsa;
	u32	nxtdsp;
	u32	*vdsp;
	u32	oadr, olen;
	u32	*tblp;
        u32	newcmd;
	u_int	delta;
	u_char	cmd;
	u_char	hflags, hflags0;
	struct	sym_pmc *pm;
	struct sym_ccb *cp;

	dsp	= FUNC2(np, nc_dsp);
	dbc	= FUNC2(np, nc_dbc);
	dsa	= FUNC2(np, nc_dsa);

	cmd	= dbc >> 24;
	rest	= dbc & 0xffffff;
	delta	= 0;

	/*
	 *  locate matching cp if any.
	 */
	cp = FUNC11(np, dsa);

	/*
	 *  Donnot take into account dma fifo and various buffers in 
	 *  INPUT phase since the chip flushes everything before 
	 *  raising the MA interrupt for interrupted INPUT phases.
	 *  For DATA IN phase, we will check for the SWIDE later.
	 */
	if ((cmd & 7) != 1 && (cmd & 7) != 5) {
		u_char ss0, ss2;

		if (np->features & FE_DFBC)
			delta = FUNC3(np, nc_dfbc);
		else {
			u32 dfifo;

			/*
			 * Read DFIFO, CTEST[4-6] using 1 PCI bus ownership.
			 */
			dfifo = FUNC2(np, nc_dfifo);

			/*
			 *  Calculate remaining bytes in DMA fifo.
			 *  (CTEST5 = dfifo >> 16)
			 */
			if (dfifo & (DFS << 16))
				delta = ((((dfifo >> 8) & 0x300) |
				          (dfifo & 0xff)) - rest) & 0x3ff;
			else
				delta = ((dfifo & 0xff) - rest) & 0x7f;
		}

		/*
		 *  The data in the dma fifo has not been transfered to
		 *  the target -> add the amount to the rest
		 *  and clear the data.
		 *  Check the sstat2 register in case of wide transfer.
		 */
		rest += delta;
		ss0  = FUNC1(np, nc_sstat0);
		if (ss0 & OLF) rest++;
		if (!(np->features & FE_C10))
			if (ss0 & ORF) rest++;
		if (cp && (cp->phys.select.sel_scntl3 & EWS)) {
			ss2 = FUNC1(np, nc_sstat2);
			if (ss2 & OLF1) rest++;
			if (!(np->features & FE_C10))
				if (ss2 & ORF1) rest++;
		}

		/*
		 *  Clear fifos.
		 */
		FUNC4(np, nc_ctest3, np->rv_ctest3 | CLF);	/* dma fifo  */
		FUNC4(np, nc_stest3, TE|CSF);		/* scsi fifo */
	}

	/*
	 *  log the information
	 */
	if (DEBUG_FLAGS & (DEBUG_TINY|DEBUG_PHASE))
		FUNC9 ("P%x%x RL=%d D=%d ", cmd&7, FUNC1(np, nc_sbcl)&7,
			(unsigned) rest, (unsigned) delta);

	/*
	 *  try to find the interrupted script command,
	 *  and the address at which to continue.
	 */
	vdsp	= NULL;
	nxtdsp	= 0;
	if	(dsp >  np->scripta_ba &&
		 dsp <= np->scripta_ba + np->scripta_sz) {
		vdsp = (u32 *)((char*)np->scripta0 + (dsp-np->scripta_ba-8));
		nxtdsp = dsp;
	}
	else if	(dsp >  np->scriptb_ba &&
		 dsp <= np->scriptb_ba + np->scriptb_sz) {
		vdsp = (u32 *)((char*)np->scriptb0 + (dsp-np->scriptb_ba-8));
		nxtdsp = dsp;
	}

	/*
	 *  log the information
	 */
	if (DEBUG_FLAGS & DEBUG_PHASE) {
		FUNC9 ("\nCP=%p DSP=%x NXT=%x VDSP=%p CMD=%x ",
			cp, (unsigned)dsp, (unsigned)nxtdsp, vdsp, cmd);
	}

	if (!vdsp) {
		FUNC9 ("%s: interrupted SCRIPT address not found.\n", 
			FUNC12 (np));
		goto reset_all;
	}

	if (!cp) {
		FUNC9 ("%s: SCSI phase error fixup: CCB already dequeued.\n", 
			FUNC12 (np));
		goto reset_all;
	}

	/*
	 *  get old startaddress and old length.
	 */
	oadr = FUNC10(vdsp[1]);

	if (cmd & 0x10) {	/* Table indirect */
		tblp = (u32 *) ((char*) &cp->phys + oadr);
		olen = FUNC10(tblp[0]);
		oadr = FUNC10(tblp[1]);
	} else {
		tblp = (u32 *) 0;
		olen = FUNC10(vdsp[0]) & 0xffffff;
	}

	if (DEBUG_FLAGS & DEBUG_PHASE) {
		FUNC9 ("OCMD=%x\nTBLP=%p OLEN=%x OADR=%x\n",
			(unsigned) (FUNC10(vdsp[0]) >> 24),
			tblp,
			(unsigned) olen,
			(unsigned) oadr);
	}

	/*
	 *  check cmd against assumed interrupted script command.
	 *  If dt data phase, the MOVE instruction hasn't bit 4 of 
	 *  the phase.
	 */
	if (((cmd & 2) ? cmd : (cmd & ~4)) != (FUNC10(vdsp[0]) >> 24)) {
		FUNC13(cp->cmd,
			"internal error: cmd=%02x != %02x=(vdsp[0] >> 24)\n",
			cmd, FUNC10(vdsp[0]) >> 24);

		goto reset_all;
	}

	/*
	 *  if old phase not dataphase, leave here.
	 */
	if (cmd & 2) {
		FUNC13(cp->cmd,
			"phase change %x-%x %d@%08x resid=%d.\n",
			cmd&7, FUNC1(np, nc_sbcl)&7, (unsigned)olen,
			(unsigned)oadr, (unsigned)rest);
		goto unexpected_phase;
	}

	/*
	 *  Choose the correct PM save area.
	 *
	 *  Look at the PM_SAVE SCRIPT if you want to understand 
	 *  this stuff. The equivalent code is implemented in 
	 *  SCRIPTS for the 895A, 896 and 1010 that are able to 
	 *  handle PM from the SCRIPTS processor.
	 */
	hflags0 = FUNC1(np, HF_PRT);
	hflags = hflags0;

	if (hflags & (HF_IN_PM0 | HF_IN_PM1 | HF_DP_SAVED)) {
		if (hflags & HF_IN_PM0)
			nxtdsp = FUNC10(cp->phys.pm0.ret);
		else if	(hflags & HF_IN_PM1)
			nxtdsp = FUNC10(cp->phys.pm1.ret);

		if (hflags & HF_DP_SAVED)
			hflags ^= HF_ACT_PM;
	}

	if (!(hflags & HF_ACT_PM)) {
		pm = &cp->phys.pm0;
		newcmd = FUNC6(np, pm0_data);
	}
	else {
		pm = &cp->phys.pm1;
		newcmd = FUNC6(np, pm1_data);
	}

	hflags &= ~(HF_IN_PM0 | HF_IN_PM1 | HF_DP_SAVED);
	if (hflags != hflags0)
		FUNC4(np, HF_PRT, hflags);

	/*
	 *  fillin the phase mismatch context
	 */
	pm->sg.addr = FUNC8(oadr + olen - rest);
	pm->sg.size = FUNC8(rest);
	pm->ret     = FUNC8(nxtdsp);

	/*
	 *  If we have a SWIDE,
	 *  - prepare the address to write the SWIDE from SCRIPTS,
	 *  - compute the SCRIPTS address to restart from,
	 *  - move current data pointer context by one byte.
	 */
	nxtdsp = FUNC6(np, dispatch);
	if ((cmd & 7) == 1 && cp && (cp->phys.select.sel_scntl3 & EWS) &&
	    (FUNC1(np, nc_scntl2) & WSR)) {
		u32 tmp;

		/*
		 *  Set up the table indirect for the MOVE
		 *  of the residual byte and adjust the data 
		 *  pointer context.
		 */
		tmp = FUNC10(pm->sg.addr);
		cp->phys.wresid.addr = FUNC8(tmp);
		pm->sg.addr = FUNC8(tmp + 1);
		tmp = FUNC10(pm->sg.size);
		cp->phys.wresid.size = FUNC8((tmp&0xff000000) | 1);
		pm->sg.size = FUNC8(tmp - 1);

		/*
		 *  If only the residual byte is to be moved, 
		 *  no PM context is needed.
		 */
		if ((tmp&0xffffff) == 1)
			newcmd = pm->ret;

		/*
		 *  Prepare the address of SCRIPTS that will 
		 *  move the residual byte to memory.
		 */
		nxtdsp = FUNC7(np, wsr_ma_helper);
	}

	if (DEBUG_FLAGS & DEBUG_PHASE) {
		FUNC13(cp->cmd, "PM %x %x %x / %x %x %x.\n",
			hflags0, hflags, newcmd,
			(unsigned)FUNC10(pm->sg.addr),
			(unsigned)FUNC10(pm->sg.size),
			(unsigned)FUNC10(pm->ret));
	}

	/*
	 *  Restart the SCRIPTS processor.
	 */
	FUNC14 (np, cp, newcmd);
	FUNC5(np, nxtdsp);
	return;

	/*
	 *  Unexpected phase changes that occurs when the current phase 
	 *  is not a DATA IN or DATA OUT phase are due to error conditions.
	 *  Such event may only happen when the SCRIPTS is using a 
	 *  multibyte SCSI MOVE.
	 *
	 *  Phase change		Some possible cause
	 *
	 *  COMMAND  --> MSG IN	SCSI parity error detected by target.
	 *  COMMAND  --> STATUS	Bad command or refused by target.
	 *  MSG OUT  --> MSG IN     Message rejected by target.
	 *  MSG OUT  --> COMMAND    Bogus target that discards extended
	 *  			negotiation messages.
	 *
	 *  The code below does not care of the new phase and so 
	 *  trusts the target. Why to annoy it ?
	 *  If the interrupted phase is COMMAND phase, we restart at
	 *  dispatcher.
	 *  If a target does not get all the messages after selection, 
	 *  the code assumes blindly that the target discards extended 
	 *  messages and clears the negotiation status.
	 *  If the target does not want all our response to negotiation,
	 *  we force a SIR_NEGO_PROTO interrupt (it is a hack that avoids 
	 *  bloat for such a should_not_happen situation).
	 *  In all other situation, we reset the BUS.
	 *  Are these assumptions reasonnable ? (Wait and see ...)
	 */
unexpected_phase:
	dsp -= 8;
	nxtdsp = 0;

	switch (cmd & 7) {
	case 2:	/* COMMAND phase */
		nxtdsp = FUNC6(np, dispatch);
		break;
#if 0
	case 3:	/* STATUS  phase */
		nxtdsp = SCRIPTA_BA(np, dispatch);
		break;
#endif
	case 6:	/* MSG OUT phase */
		/*
		 *  If the device may want to use untagged when we want 
		 *  tagged, we prepare an IDENTIFY without disc. granted, 
		 *  since we will not be able to handle reselect.
		 *  Otherwise, we just don't care.
		 */
		if	(dsp == FUNC6(np, send_ident)) {
			if (cp->tag != NO_TAG && olen - rest <= 3) {
				cp->host_status = HS_BUSY;
				np->msgout[0] = FUNC0(0, cp->lun);
				nxtdsp = FUNC7(np, ident_break_atn);
			}
			else
				nxtdsp = FUNC7(np, ident_break);
		}
		else if	(dsp == FUNC7(np, send_wdtr) ||
			 dsp == FUNC7(np, send_sdtr) ||
			 dsp == FUNC7(np, send_ppr)) {
			nxtdsp = FUNC7(np, nego_bad_phase);
			if (dsp == FUNC7(np, send_ppr)) {
				struct scsi_device *dev = cp->cmd->device;
				dev->ppr = 0;
			}
		}
		break;
#if 0
	case 7:	/* MSG IN  phase */
		nxtdsp = SCRIPTA_BA(np, clrack);
		break;
#endif
	}

	if (nxtdsp) {
		FUNC5(np, nxtdsp);
		return;
	}

reset_all:
	FUNC15(np);
}