#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int ctrl_status; int /*<<< orphan*/  termios_mutex; struct ktermios* termios; TYPE_2__* ops; TYPE_1__* link; int /*<<< orphan*/  ctrl_lock; int /*<<< orphan*/  termios_locked; } ;
struct tty_ldisc {TYPE_3__* ops; } ;
struct ktermios {int c_iflag; char* c_cc; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  read_wait; scalar_t__ packet; } ;

/* Variables and functions */
 int IXON ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 char FUNC1 (struct tty_struct*) ; 
 char FUNC2 (struct tty_struct*) ; 
 int TIOCPKT_DOSTOP ; 
 int TIOCPKT_NOSTOP ; 
 size_t VSTART ; 
 size_t VSTOP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_ldisc*) ; 
 struct tty_ldisc* FUNC10 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct ktermios*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC12 (struct ktermios*,struct ktermios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct tty_struct *tty, struct ktermios *new_termios)
{
	struct ktermios old_termios;
	struct tty_ldisc *ld;
	unsigned long flags;

	/*
	 *	Perform the actual termios internal changes under lock.
	 */


	/* FIXME: we need to decide on some locking/ordering semantics
	   for the set_termios notification eventually */
	FUNC3(&tty->termios_mutex);
	old_termios = *tty->termios;
	*tty->termios = *new_termios;
	FUNC12(tty->termios, &old_termios, tty->termios_locked);

	/* See if packet mode change of state. */
	if (tty->link && tty->link->packet) {
		int old_flow = ((old_termios.c_iflag & IXON) &&
				(old_termios.c_cc[VSTOP] == '\023') &&
				(old_termios.c_cc[VSTART] == '\021'));
		int new_flow = (FUNC0(tty) &&
				FUNC2(tty) == '\023' &&
				FUNC1(tty) == '\021');
		if (old_flow != new_flow) {
			FUNC5(&tty->ctrl_lock, flags);
			tty->ctrl_status &= ~(TIOCPKT_DOSTOP | TIOCPKT_NOSTOP);
			if (new_flow)
				tty->ctrl_status |= TIOCPKT_DOSTOP;
			else
				tty->ctrl_status |= TIOCPKT_NOSTOP;
			FUNC6(&tty->ctrl_lock, flags);
			FUNC13(&tty->link->read_wait);
		}
	}

	if (tty->ops->set_termios)
		(*tty->ops->set_termios)(tty, &old_termios);
	else
		FUNC11(tty->termios, &old_termios);

	ld = FUNC10(tty);
	if (ld != NULL) {
		if (ld->ops->set_termios)
			(ld->ops->set_termios)(tty, &old_termios);
		FUNC9(ld);
	}
	FUNC4(&tty->termios_mutex);
}