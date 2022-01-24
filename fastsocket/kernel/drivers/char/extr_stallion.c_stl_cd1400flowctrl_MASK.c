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
struct stlport {int portnr; int /*<<< orphan*/  brdnr; TYPE_2__ stats; int /*<<< orphan*/  pagenr; int /*<<< orphan*/  port; } ;
struct TYPE_3__ {int c_iflag; int c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAR ; 
 int /*<<< orphan*/  CCR ; 
 int CCR_SENDSCHR1 ; 
 int CCR_SENDSCHR2 ; 
 int CRTSCTS ; 
 int FIFO_RTSTHRESHOLD ; 
 int IXOFF ; 
 int /*<<< orphan*/  MCOR1 ; 
 int /*<<< orphan*/  MSVR2 ; 
 int MSVR2_RTS ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stlport*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct stlport*) ; 
 int FUNC6 (struct stlport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stlport*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 struct tty_struct* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct stlport *portp, int state)
{
	struct tty_struct	*tty;
	unsigned long		flags;

	FUNC2("stl_cd1400flowctrl(portp=%p,state=%x)\n", portp, state);

	if (portp == NULL)
		return;
	tty = FUNC9(&portp->port);
	if (tty == NULL)
		return;

	FUNC3(&brd_lock, flags);
	FUNC1(portp->brdnr, portp->pagenr);
	FUNC7(portp, CAR, (portp->portnr & 0x03));

	if (state) {
		if (tty->termios->c_iflag & IXOFF) {
			FUNC5(portp);
			FUNC7(portp, CCR, CCR_SENDSCHR1);
			portp->stats.rxxon++;
			FUNC5(portp);
		}
/*
 *		Question: should we return RTS to what it was before? It may
 *		have been set by an ioctl... Suppose not, since if you have
 *		hardware flow control set then it is pretty silly to go and
 *		set the RTS line by hand.
 */
		if (tty->termios->c_cflag & CRTSCTS) {
			FUNC7(portp, MCOR1,
				(FUNC6(portp, MCOR1) |
				FIFO_RTSTHRESHOLD));
			FUNC7(portp, MSVR2, MSVR2_RTS);
			portp->stats.rxrtson++;
		}
	} else {
		if (tty->termios->c_iflag & IXOFF) {
			FUNC5(portp);
			FUNC7(portp, CCR, CCR_SENDSCHR2);
			portp->stats.rxxoff++;
			FUNC5(portp);
		}
		if (tty->termios->c_cflag & CRTSCTS) {
			FUNC7(portp, MCOR1,
				(FUNC6(portp, MCOR1) & 0xf0));
			FUNC7(portp, MSVR2, 0);
			portp->stats.rxrtsoff++;
		}
	}

	FUNC0(portp->brdnr);
	FUNC4(&brd_lock, flags);
	FUNC8(tty);
}