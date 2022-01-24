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
struct tty_struct {int read_head; int canon_head; int read_cnt; unsigned char* read_buf; int erasing; int /*<<< orphan*/  read_lock; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct tty_struct*) ; 
 unsigned char FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_struct*) ; 
 int N_TTY_BUF_SIZE ; 
 unsigned char FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC10 (char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 scalar_t__ FUNC14 (unsigned char,struct tty_struct*) ; 
 scalar_t__ FUNC15 (unsigned char) ; 
 scalar_t__ FUNC16 (unsigned char) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC19(unsigned char c, struct tty_struct *tty)
{
	enum { ERASE, WERASE, KILL } kill_type;
	int head, seen_alnums, cnt;
	unsigned long flags;

	/* FIXME: locking needed ? */
	if (tty->read_head == tty->canon_head) {
		/* process_output('\a', tty); */ /* what do you think? */
		return;
	}
	if (c == FUNC0(tty))
		kill_type = ERASE;
	else if (c == FUNC8(tty))
		kill_type = WERASE;
	else {
		if (!FUNC2(tty)) {
			FUNC17(&tty->read_lock, flags);
			tty->read_cnt -= ((tty->read_head - tty->canon_head) &
					  (N_TTY_BUF_SIZE - 1));
			tty->read_head = tty->canon_head;
			FUNC18(&tty->read_lock, flags);
			return;
		}
		if (!FUNC5(tty) || !FUNC6(tty) || !FUNC4(tty)) {
			FUNC17(&tty->read_lock, flags);
			tty->read_cnt -= ((tty->read_head - tty->canon_head) &
					  (N_TTY_BUF_SIZE - 1));
			tty->read_head = tty->canon_head;
			FUNC18(&tty->read_lock, flags);
			FUNC13(tty);
			FUNC9(FUNC1(tty), tty);
			/* Add a newline if ECHOK is on and ECHOKE is off. */
			if (FUNC5(tty))
				FUNC10('\n', tty);
			return;
		}
		kill_type = KILL;
	}

	seen_alnums = 0;
	/* FIXME: Locking ?? */
	while (tty->read_head != tty->canon_head) {
		head = tty->read_head;

		/* erase a single possibly multibyte character */
		do {
			head = (head - 1) & (N_TTY_BUF_SIZE-1);
			c = tty->read_buf[head];
		} while (FUNC14(c, tty) && head != tty->canon_head);

		/* do not partially erase */
		if (FUNC14(c, tty))
			break;

		if (kill_type == WERASE) {
			/* Equivalent to BSD's ALTWERASE. */
			if (FUNC15(c) || c == '_')
				seen_alnums++;
			else if (seen_alnums)
				break;
		}
		cnt = (tty->read_head - head) & (N_TTY_BUF_SIZE-1);
		FUNC17(&tty->read_lock, flags);
		tty->read_head = head;
		tty->read_cnt -= cnt;
		FUNC18(&tty->read_lock, flags);
		if (FUNC2(tty)) {
			if (FUNC7(tty)) {
				if (!tty->erasing) {
					FUNC10('\\', tty);
					tty->erasing = 1;
				}
				/* if cnt > 1, output a multi-byte character */
				FUNC9(c, tty);
				while (--cnt > 0) {
					head = (head+1) & (N_TTY_BUF_SIZE-1);
					FUNC10(tty->read_buf[head], tty);
					FUNC12(tty);
				}
			} else if (kill_type == ERASE && !FUNC4(tty)) {
				FUNC9(FUNC0(tty), tty);
			} else if (c == '\t') {
				unsigned int num_chars = 0;
				int after_tab = 0;
				unsigned long tail = tty->read_head;

				/*
				 * Count the columns used for characters
				 * since the start of input or after a
				 * previous tab.
				 * This info is used to go back the correct
				 * number of columns.
				 */
				while (tail != tty->canon_head) {
					tail = (tail-1) & (N_TTY_BUF_SIZE-1);
					c = tty->read_buf[tail];
					if (c == '\t') {
						after_tab = 1;
						break;
					} else if (FUNC16(c)) {
						if (FUNC3(tty))
							num_chars += 2;
					} else if (!FUNC14(c, tty)) {
						num_chars++;
					}
				}
				FUNC11(num_chars, after_tab, tty);
			} else {
				if (FUNC16(c) && FUNC3(tty)) {
					FUNC10('\b', tty);
					FUNC10(' ', tty);
					FUNC10('\b', tty);
				}
				if (!FUNC16(c) || FUNC3(tty)) {
					FUNC10('\b', tty);
					FUNC10(' ', tty);
					FUNC10('\b', tty);
				}
			}
		}
		if (kill_type == ERASE)
			break;
	}
	if (tty->read_head == tty->canon_head && FUNC2(tty))
		FUNC13(tty);
}