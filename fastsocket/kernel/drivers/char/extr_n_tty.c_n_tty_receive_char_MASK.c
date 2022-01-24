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
struct tty_struct {int lnext; int read_cnt; scalar_t__ canon_head; scalar_t__ read_head; unsigned char* read_buf; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  fasync; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  canon_data; int /*<<< orphan*/ * read_flags; int /*<<< orphan*/  flags; scalar_t__ icanon; scalar_t__ pgrp; int /*<<< orphan*/  process_char_map; scalar_t__ closing; int /*<<< orphan*/  flow_stopped; scalar_t__ stopped; scalar_t__ raw; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct tty_struct*) ; 
 unsigned char FUNC1 (struct tty_struct*) ; 
 unsigned char FUNC2 (struct tty_struct*) ; 
 unsigned char FUNC3 (struct tty_struct*) ; 
 unsigned char FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_struct*) ; 
 scalar_t__ FUNC8 (struct tty_struct*) ; 
 scalar_t__ FUNC9 (struct tty_struct*) ; 
 scalar_t__ FUNC10 (struct tty_struct*) ; 
 scalar_t__ FUNC11 (struct tty_struct*) ; 
 scalar_t__ FUNC12 (struct tty_struct*) ; 
 unsigned char FUNC13 (struct tty_struct*) ; 
 unsigned char FUNC14 (struct tty_struct*) ; 
 scalar_t__ FUNC15 (struct tty_struct*) ; 
 scalar_t__ FUNC16 (struct tty_struct*) ; 
 scalar_t__ FUNC17 (struct tty_struct*) ; 
 scalar_t__ FUNC18 (struct tty_struct*) ; 
 scalar_t__ FUNC19 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct tty_struct*) ; 
 int N_TTY_BUF_SIZE ; 
 int /*<<< orphan*/  POLL_IN ; 
 unsigned char FUNC21 (struct tty_struct*) ; 
 unsigned char FUNC22 (struct tty_struct*) ; 
 int SIGINT ; 
 int /*<<< orphan*/  SIGIO ; 
 int SIGQUIT ; 
 int SIGTSTP ; 
 unsigned char FUNC23 (struct tty_struct*) ; 
 unsigned char FUNC24 (struct tty_struct*) ; 
 unsigned char FUNC25 (struct tty_struct*) ; 
 scalar_t__ TTY_PUSH ; 
 unsigned char FUNC26 (struct tty_struct*) ; 
 unsigned char __DISABLED_CHAR ; 
 int /*<<< orphan*/  FUNC27 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC28 (char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC29 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC30 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC31 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC34 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC35 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC36 (char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC37 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC38 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC39 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC42 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC43 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC44 (unsigned char,int /*<<< orphan*/ ) ; 
 unsigned char FUNC45 (unsigned char) ; 
 int /*<<< orphan*/  FUNC46 (struct tty_struct*) ; 
 scalar_t__ FUNC47 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC49(struct tty_struct *tty, unsigned char c)
{
	unsigned long flags;
	int parmrk;

	if (tty->raw) {
		FUNC37(c, tty);
		return;
	}

	if (FUNC8(tty))
		c &= 0x7f;
	if (FUNC9(tty) && FUNC18(tty))
		c = FUNC45(c);

	if (tty->stopped && !tty->flow_stopped && FUNC11(tty) &&
	    FUNC10(tty) && c != FUNC23(tty) && c != FUNC24(tty) &&
	    c != FUNC4(tty) && c != FUNC21(tty) && c != FUNC25(tty)) {
		FUNC42(tty);
		FUNC35(tty);
	}

	if (tty->closing) {
		if (FUNC11(tty)) {
			if (c == FUNC23(tty)) {
				FUNC42(tty);
				FUNC35(tty);
			} else if (c == FUNC24(tty))
				FUNC43(tty);
		}
		return;
	}

	/*
	 * If the previous character was LNEXT, or we know that this
	 * character is not one of the characters that we'll have to
	 * handle specially, do shortcut processing to speed things
	 * up.
	 */
	if (!FUNC44(c, tty->process_char_map) || tty->lnext) {
		tty->lnext = 0;
		parmrk = (c == (unsigned char) '\377' && FUNC12(tty)) ? 1 : 0;
		if (tty->read_cnt >= (N_TTY_BUF_SIZE - parmrk - 1)) {
			/* beep if no space */
			if (FUNC15(tty))
				FUNC36('\a', tty);
			return;
		}
		if (FUNC15(tty)) {
			FUNC31(tty);
			/* Record the column of first canon char. */
			if (tty->canon_head == tty->read_head)
				FUNC29(tty);
			FUNC27(c, tty);
			FUNC35(tty);
		}
		if (parmrk)
			FUNC37(c, tty);
		FUNC37(c, tty);
		return;
	}

	if (FUNC11(tty)) {
		if (c == FUNC23(tty)) {
			FUNC42(tty);
			FUNC35(tty);
			return;
		}
		if (c == FUNC24(tty)) {
			FUNC43(tty);
			return;
		}
	}

	if (FUNC19(tty)) {
		int signal;
		signal = SIGINT;
		if (c == FUNC4(tty))
			goto send_signal;
		signal = SIGQUIT;
		if (c == FUNC21(tty))
			goto send_signal;
		signal = SIGTSTP;
		if (c == FUNC25(tty)) {
send_signal:
			/*
			 * Note that we do not use isig() here because we want
			 * the order to be:
			 * 1) flush, 2) echo, 3) signal
			 */
			if (!FUNC20(tty)) {
				FUNC34(tty);
				FUNC46(tty);
			}
			if (FUNC11(tty))
				FUNC42(tty);
			if (FUNC15(tty)) {
				FUNC27(c, tty);
				FUNC35(tty);
			}
			if (tty->pgrp)
				FUNC33(tty->pgrp, signal, 1);
			return;
		}
	}

	if (c == '\r') {
		if (FUNC6(tty))
			return;
		if (FUNC5(tty))
			c = '\n';
	} else if (c == '\n' && FUNC7(tty))
		c = '\r';

	if (tty->icanon) {
		if (c == FUNC3(tty) || c == FUNC13(tty) ||
		    (c == FUNC26(tty) && FUNC18(tty))) {
			FUNC30(c, tty);
			FUNC35(tty);
			return;
		}
		if (c == FUNC14(tty) && FUNC18(tty)) {
			tty->lnext = 1;
			if (FUNC15(tty)) {
				FUNC31(tty);
				if (FUNC16(tty)) {
					FUNC28('^', tty);
					FUNC28('\b', tty);
					FUNC35(tty);
				}
			}
			return;
		}
		if (c == FUNC22(tty) && FUNC15(tty) &&
		    FUNC18(tty)) {
			unsigned long tail = tty->canon_head;

			FUNC31(tty);
			FUNC27(c, tty);
			FUNC28('\n', tty);
			while (tail != tty->read_head) {
				FUNC27(tty->read_buf[tail], tty);
				tail = (tail+1) & (N_TTY_BUF_SIZE-1);
			}
			FUNC35(tty);
			return;
		}
		if (c == '\n') {
			if (tty->read_cnt >= N_TTY_BUF_SIZE) {
				if (FUNC15(tty))
					FUNC36('\a', tty);
				return;
			}
			if (FUNC15(tty) || FUNC17(tty)) {
				FUNC28('\n', tty);
				FUNC35(tty);
			}
			goto handle_newline;
		}
		if (c == FUNC0(tty)) {
			if (tty->read_cnt >= N_TTY_BUF_SIZE)
				return;
			if (tty->canon_head != tty->read_head)
				FUNC39(TTY_PUSH, &tty->flags);
			c = __DISABLED_CHAR;
			goto handle_newline;
		}
		if ((c == FUNC2(tty)) ||
		    (c == FUNC1(tty) && FUNC18(tty))) {
			parmrk = (c == (unsigned char) '\377' && FUNC12(tty))
				 ? 1 : 0;
			if (tty->read_cnt >= (N_TTY_BUF_SIZE - parmrk)) {
				if (FUNC15(tty))
					FUNC36('\a', tty);
				return;
			}
			/*
			 * XXX are EOL_CHAR and EOL2_CHAR echoed?!?
			 */
			if (FUNC15(tty)) {
				/* Record the column of first canon char. */
				if (tty->canon_head == tty->read_head)
					FUNC29(tty);
				FUNC27(c, tty);
				FUNC35(tty);
			}
			/*
			 * XXX does PARMRK doubling happen for
			 * EOL_CHAR and EOL2_CHAR?
			 */
			if (parmrk)
				FUNC37(c, tty);

handle_newline:
			FUNC40(&tty->read_lock, flags);
			FUNC39(tty->read_head, tty->read_flags);
			FUNC38(c, tty);
			tty->canon_head = tty->read_head;
			tty->canon_data++;
			FUNC41(&tty->read_lock, flags);
			FUNC32(&tty->fasync, SIGIO, POLL_IN);
			if (FUNC47(&tty->read_wait))
				FUNC48(&tty->read_wait);
			return;
		}
	}

	parmrk = (c == (unsigned char) '\377' && FUNC12(tty)) ? 1 : 0;
	if (tty->read_cnt >= (N_TTY_BUF_SIZE - parmrk - 1)) {
		/* beep if no space */
		if (FUNC15(tty))
			FUNC36('\a', tty);
		return;
	}
	if (FUNC15(tty)) {
		FUNC31(tty);
		if (c == '\n')
			FUNC28('\n', tty);
		else {
			/* Record the column of first canon char. */
			if (tty->canon_head == tty->read_head)
				FUNC29(tty);
			FUNC27(c, tty);
		}
		FUNC35(tty);
	}

	if (parmrk)
		FUNC37(c, tty);

	FUNC37(c, tty);
}