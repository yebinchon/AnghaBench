#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct ktermios* termios; } ;
struct TYPE_27__ {TYPE_1__* CtlP; } ;
struct r_port {size_t board; int cps; int cd_status; int read_status_mask; int ignore_status_mask; unsigned int flags; TYPE_2__ channel; int /*<<< orphan*/  slock; int /*<<< orphan*/  intmask; } ;
struct ktermios {unsigned int c_cflag; } ;
struct TYPE_26__ {scalar_t__ boardType; } ;
typedef  TYPE_2__ CHANNEL_t ;

/* Variables and functions */
 int CD_ACT ; 
 unsigned int CLOCAL ; 
 unsigned int CRTSCTS ; 
 unsigned int CS8 ; 
 unsigned int CSIZE ; 
 unsigned int CSTOPB ; 
 int /*<<< orphan*/  DELTA_CD ; 
 int /*<<< orphan*/  DELTA_CTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (struct tty_struct*) ; 
 int /*<<< orphan*/  InterfaceModeRS232 ; 
 int /*<<< orphan*/  InterfaceModeRS232T ; 
 int /*<<< orphan*/  InterfaceModeRS422 ; 
 int /*<<< orphan*/  InterfaceModeRS485 ; 
 unsigned int PARENB ; 
 unsigned int PARODD ; 
 unsigned int ROCKET_MODE_MASK ; 
#define  ROCKET_MODE_RS232 130 
#define  ROCKET_MODE_RS422 129 
#define  ROCKET_MODE_RS485 128 
 int ROCKET_RTS_TOGGLE ; 
 scalar_t__ ROCKET_TYPE_PC104 ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int STMBREAKH ; 
 int STMFRAMEH ; 
 int STMPARITYH ; 
 int STMRCVROVRH ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int* rp_baud_base ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC34 (struct tty_struct*,int,int) ; 
 int FUNC35 (struct tty_struct*) ; 
 int FUNC36 (struct ktermios*) ; 

__attribute__((used)) static void FUNC37(struct tty_struct *tty, struct r_port *info,
			     struct ktermios *old_termios)
{
	unsigned cflag;
	unsigned long flags;
	unsigned rocketMode;
	int bits, baud, divisor;
	CHANNEL_t *cp;
	struct ktermios *t = tty->termios;

	cp = &info->channel;
	cflag = t->c_cflag;

	/* Byte size and parity */
	if ((cflag & CSIZE) == CS8) {
		FUNC23(cp);
		bits = 10;
	} else {
		FUNC22(cp);
		bits = 9;
	}
	if (cflag & CSTOPB) {
		FUNC29(cp);
		bits++;
	} else {
		FUNC28(cp);
	}

	if (cflag & PARENB) {
		FUNC17(cp);
		bits++;
		if (cflag & PARODD) {
			FUNC26(cp);
		} else {
			FUNC24(cp);
		}
	} else {
		FUNC12(cp);
	}

	/* baud rate */
	baud = FUNC35(tty);
	if (!baud)
		baud = 9600;
	divisor = ((rp_baud_base[info->board] + (baud >> 1)) / baud) - 1;
	if ((divisor >= 8192 || divisor < 0) && old_termios) {
		baud = FUNC36(old_termios);
		if (!baud)
			baud = 9600;
		divisor = (rp_baud_base[info->board] / baud) - 1;
	}
	if (divisor >= 8192 || divisor < 0) {
		baud = 9600;
		divisor = (rp_baud_base[info->board] / baud) - 1;
	}
	info->cps = baud / bits;
	FUNC21(cp, divisor);

	/* FIXME: Should really back compute a baud rate from the divisor */
	FUNC34(tty, baud, baud);

	if (cflag & CRTSCTS) {
		info->intmask |= DELTA_CTS;
		FUNC15(cp);
	} else {
		info->intmask &= ~DELTA_CTS;
		FUNC10(cp);
	}
	if (cflag & CLOCAL) {
		info->intmask &= ~DELTA_CD;
	} else {
		FUNC32(&info->slock, flags);
		if (FUNC20(cp) & CD_ACT)
			info->cd_status = 1;
		else
			info->cd_status = 0;
		info->intmask |= DELTA_CD;
		FUNC33(&info->slock, flags);
	}

	/*
	 * Handle software flow control in the board
	 */
#ifdef ROCKET_SOFT_FLOW
	if (I_IXON(tty)) {
		sEnTxSoftFlowCtl(cp);
		if (I_IXANY(tty)) {
			sEnIXANY(cp);
		} else {
			sDisIXANY(cp);
		}
		sSetTxXONChar(cp, START_CHAR(tty));
		sSetTxXOFFChar(cp, STOP_CHAR(tty));
	} else {
		sDisTxSoftFlowCtl(cp);
		sDisIXANY(cp);
		sClrTxXOFF(cp);
	}
#endif

	/*
	 * Set up ignore/read mask words
	 */
	info->read_status_mask = STMRCVROVRH | 0xFF;
	if (FUNC3(tty))
		info->read_status_mask |= STMFRAMEH | STMPARITYH;
	if (FUNC0(tty) || FUNC6(tty))
		info->read_status_mask |= STMBREAKH;

	/*
	 * Characters to ignore
	 */
	info->ignore_status_mask = 0;
	if (FUNC2(tty))
		info->ignore_status_mask |= STMFRAMEH | STMPARITYH;
	if (FUNC1(tty)) {
		info->ignore_status_mask |= STMBREAKH;
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too.  (For real raw support).
		 */
		if (FUNC2(tty))
			info->ignore_status_mask |= STMRCVROVRH;
	}

	rocketMode = info->flags & ROCKET_MODE_MASK;

	if ((info->flags & ROCKET_RTS_TOGGLE)
	    || (rocketMode == ROCKET_MODE_RS485))
		FUNC18(cp);
	else
		FUNC13(cp);

	FUNC27(&info->channel);

	if (cp->CtlP->boardType == ROCKET_TYPE_PC104) {
		switch (rocketMode) {
		case ROCKET_MODE_RS485:
			FUNC25(cp, InterfaceModeRS485);
			break;
		case ROCKET_MODE_RS422:
			FUNC25(cp, InterfaceModeRS422);
			break;
		case ROCKET_MODE_RS232:
		default:
			if (info->flags & ROCKET_RTS_TOGGLE)
				FUNC25(cp, InterfaceModeRS232T);
			else
				FUNC25(cp, InterfaceModeRS232);
			break;
		}
	}
}