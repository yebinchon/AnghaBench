#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_1__* termios; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxrtsoff; int /*<<< orphan*/  rxxoff; int /*<<< orphan*/  rxrtson; int /*<<< orphan*/  rxxon; } ;
struct stlport {int /*<<< orphan*/  brdnr; TYPE_2__ stats; int /*<<< orphan*/  pagenr; int /*<<< orphan*/  port; } ;
struct TYPE_3__ {int c_iflag; int c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CRTSCTS ; 
 unsigned char CR_TXSENDXOFF ; 
 unsigned char CR_TXSENDXON ; 
 int /*<<< orphan*/  IOPIOR ; 
 unsigned char IOPR_RTS ; 
 int IXOFF ; 
 int /*<<< orphan*/  MR0 ; 
 unsigned char MR0_SWFRX ; 
 unsigned char MR0_SWFRXTX ; 
 int /*<<< orphan*/  MR1 ; 
 unsigned char MR1_AUTORTS ; 
 int /*<<< orphan*/  SCCR ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char FUNC5 (struct stlport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stlport*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct stlport*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 struct tty_struct* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct stlport *portp, int state)
{
	struct tty_struct	*tty;
	unsigned long		flags;
	unsigned char		mr0;

	FUNC2("stl_sc26198flowctrl(portp=%p,state=%x)\n", portp, state);

	if (portp == NULL)
		return;
	tty = FUNC9(&portp->port);
	if (tty == NULL)
		return;

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);

	if (state) {
		if (tty->termios->c_iflag & IXOFF) {
			mr0 = FUNC5(portp, MR0);
			FUNC6(portp, MR0, (mr0 & ~MR0_SWFRXTX));
			FUNC6(portp, SCCR, CR_TXSENDXON);
			mr0 |= MR0_SWFRX;
			portp->stats.rxxon++;
			FUNC7(portp);
			FUNC6(portp, MR0, mr0);
		}
/*
 *		Question: should we return RTS to what it was before? It may
 *		have been set by an ioctl... Suppose not, since if you have
 *		hardware flow control set then it is pretty silly to go and
 *		set the RTS line by hand.
 */
		if (tty->termios->c_cflag & CRTSCTS) {
			FUNC6(portp, MR1,
				(FUNC5(portp, MR1) | MR1_AUTORTS));
			FUNC6(portp, IOPIOR,
				(FUNC5(portp, IOPIOR) | IOPR_RTS));
			portp->stats.rxrtson++;
		}
	} else {
		if (tty->termios->c_iflag & IXOFF) {
			mr0 = FUNC5(portp, MR0);
			FUNC6(portp, MR0, (mr0 & ~MR0_SWFRXTX));
			FUNC6(portp, SCCR, CR_TXSENDXOFF);
			mr0 &= ~MR0_SWFRX;
			portp->stats.rxxoff++;
			FUNC7(portp);
			FUNC6(portp, MR0, mr0);
		}
		if (tty->termios->c_cflag & CRTSCTS) {
			FUNC6(portp, MR1,
				(FUNC5(portp, MR1) & ~MR1_AUTORTS));
			FUNC6(portp, IOPIOR,
				(FUNC5(portp, IOPIOR) & ~IOPR_RTS));
			portp->stats.rxrtsoff++;
		}
	}

	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);
	FUNC8(tty);
}