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
struct tty_struct {int icanon; int raw; int real_raw; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  write_wait; TYPE_2__* driver; int /*<<< orphan*/ * process_char_map; int /*<<< orphan*/  flags; scalar_t__ read_cnt; scalar_t__ erasing; scalar_t__ canon_data; int /*<<< orphan*/  read_tail; int /*<<< orphan*/  canon_head; int /*<<< orphan*/  read_flags; TYPE_1__* termios; } ;
struct ktermios {int c_lflag; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int c_lflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char FUNC1 (struct tty_struct*) ; 
 char FUNC2 (struct tty_struct*) ; 
 char FUNC3 (struct tty_struct*) ; 
 char FUNC4 (struct tty_struct*) ; 
 int ICANON ; 
 char FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_struct*) ; 
 scalar_t__ FUNC8 (struct tty_struct*) ; 
 scalar_t__ FUNC9 (struct tty_struct*) ; 
 scalar_t__ FUNC10 (struct tty_struct*) ; 
 scalar_t__ FUNC11 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 
 scalar_t__ FUNC13 (struct tty_struct*) ; 
 scalar_t__ FUNC14 (struct tty_struct*) ; 
 scalar_t__ FUNC15 (struct tty_struct*) ; 
 scalar_t__ FUNC16 (struct tty_struct*) ; 
 char FUNC17 (struct tty_struct*) ; 
 char FUNC18 (struct tty_struct*) ; 
 scalar_t__ FUNC19 (struct tty_struct*) ; 
 scalar_t__ FUNC20 (struct tty_struct*) ; 
 scalar_t__ FUNC21 (struct tty_struct*) ; 
 scalar_t__ FUNC22 (struct tty_struct*) ; 
 char FUNC23 (struct tty_struct*) ; 
 char FUNC24 (struct tty_struct*) ; 
 char FUNC25 (struct tty_struct*) ; 
 char FUNC26 (struct tty_struct*) ; 
 char FUNC27 (struct tty_struct*) ; 
 int TTY_DRIVER_REAL_RAW ; 
 int /*<<< orphan*/  TTY_HW_COOK_IN ; 
 char FUNC28 (struct tty_struct*) ; 
 int /*<<< orphan*/  __DISABLED_CHAR ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC32 (char,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC35(struct tty_struct *tty, struct ktermios *old)
{
	int canon_change = 1;
	FUNC0(!tty);

	if (old)
		canon_change = (old->c_lflag ^ tty->termios->c_lflag) & ICANON;
	if (canon_change) {
		FUNC30(&tty->read_flags, 0, sizeof tty->read_flags);
		tty->canon_head = tty->read_tail;
		tty->canon_data = 0;
		tty->erasing = 0;
	}

	if (canon_change && !FUNC20(tty) && tty->read_cnt)
		FUNC34(&tty->read_wait);

	tty->icanon = (FUNC20(tty) != 0);
	if (FUNC33(TTY_HW_COOK_IN, &tty->flags)) {
		tty->raw = 1;
		tty->real_raw = 1;
		FUNC31(tty);
		return;
	}
	if (FUNC13(tty) || FUNC14(tty) || FUNC9(tty) ||
	    FUNC7(tty) || FUNC11(tty) || FUNC20(tty) ||
	    FUNC15(tty) || FUNC22(tty) || FUNC19(tty) ||
	    FUNC16(tty)) {
		FUNC30(tty->process_char_map, 0, 256/8);

		if (FUNC9(tty) || FUNC7(tty))
			FUNC32('\r', tty->process_char_map);
		if (FUNC11(tty))
			FUNC32('\n', tty->process_char_map);

		if (FUNC20(tty)) {
			FUNC32(FUNC4(tty), tty->process_char_map);
			FUNC32(FUNC17(tty), tty->process_char_map);
			FUNC32(FUNC1(tty), tty->process_char_map);
			FUNC32('\n', tty->process_char_map);
			FUNC32(FUNC3(tty), tty->process_char_map);
			if (FUNC21(tty)) {
				FUNC32(FUNC28(tty),
					tty->process_char_map);
				FUNC32(FUNC18(tty),
					tty->process_char_map);
				FUNC32(FUNC2(tty),
					tty->process_char_map);
				if (FUNC19(tty))
					FUNC32(FUNC24(tty),
						tty->process_char_map);
			}
		}
		if (FUNC15(tty)) {
			FUNC32(FUNC25(tty), tty->process_char_map);
			FUNC32(FUNC26(tty), tty->process_char_map);
		}
		if (FUNC22(tty)) {
			FUNC32(FUNC5(tty), tty->process_char_map);
			FUNC32(FUNC23(tty), tty->process_char_map);
			FUNC32(FUNC27(tty), tty->process_char_map);
		}
		FUNC29(__DISABLED_CHAR, tty->process_char_map);
		tty->raw = 0;
		tty->real_raw = 0;
	} else {
		tty->raw = 1;
		if ((FUNC8(tty) || (!FUNC6(tty) && !FUNC16(tty))) &&
		    (FUNC10(tty) || !FUNC12(tty)) &&
		    (tty->driver->flags & TTY_DRIVER_REAL_RAW))
			tty->real_raw = 1;
		else
			tty->real_raw = 0;
	}
	FUNC31(tty);
	/* The termios change make the tty ready for I/O */
	FUNC34(&tty->write_wait);
	FUNC34(&tty->read_wait);
}