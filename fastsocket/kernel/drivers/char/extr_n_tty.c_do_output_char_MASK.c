#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int column; int canon_column; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (struct tty_struct*,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  XTABS ; 
 int /*<<< orphan*/  FUNC6 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*,char*,int) ; 
 unsigned char FUNC10 (unsigned char) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*,unsigned char) ; 

__attribute__((used)) static int FUNC12(unsigned char c, struct tty_struct *tty, int space)
{
	int	spaces;

	if (!space)
		return -1;

	switch (c) {
	case '\n':
		if (FUNC3(tty))
			tty->column = 0;
		if (FUNC2(tty)) {
			if (space < 2)
				return -1;
			tty->canon_column = tty->column = 0;
			tty->ops->write(tty, "\r\n", 2);
			return 2;
		}
		tty->canon_column = tty->column;
		break;
	case '\r':
		if (FUNC4(tty) && tty->column == 0)
			return 0;
		if (FUNC0(tty)) {
			c = '\n';
			if (FUNC3(tty))
				tty->canon_column = tty->column = 0;
			break;
		}
		tty->canon_column = tty->column = 0;
		break;
	case '\t':
		spaces = 8 - (tty->column & 7);
		if (FUNC5(tty) == XTABS) {
			if (space < spaces)
				return -1;
			tty->column += spaces;
			tty->ops->write(tty, "        ", spaces);
			return spaces;
		}
		tty->column += spaces;
		break;
	case '\b':
		if (tty->column > 0)
			tty->column--;
		break;
	default:
		if (!FUNC7(c)) {
			if (FUNC1(tty))
				c = FUNC10(c);
			if (!FUNC6(c, tty))
				tty->column++;
		}
		break;
	}

	FUNC11(tty, c);
	return 1;
}