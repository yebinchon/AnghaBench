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
struct tty_struct {int /*<<< orphan*/  output_lock; TYPE_1__* ops; int /*<<< orphan*/  column; int /*<<< orphan*/  canon_column; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,unsigned char const*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct tty_struct*,unsigned char const*,int) ; 
 int FUNC10 (struct tty_struct*) ; 

__attribute__((used)) static ssize_t FUNC11(struct tty_struct *tty,
				    const unsigned char *buf, unsigned int nr)
{
	int	space;
	int 	i;
	const unsigned char *cp;

	FUNC7(&tty->output_lock);

	space = FUNC10(tty);
	if (!space) {
		FUNC8(&tty->output_lock);
		return 0;
	}
	if (nr > space)
		nr = space;

	for (i = 0, cp = buf; i < nr; i++, cp++) {
		unsigned char c = *cp;

		switch (c) {
		case '\n':
			if (FUNC3(tty))
				tty->column = 0;
			if (FUNC2(tty))
				goto break_out;
			tty->canon_column = tty->column;
			break;
		case '\r':
			if (FUNC4(tty) && tty->column == 0)
				goto break_out;
			if (FUNC0(tty))
				goto break_out;
			tty->canon_column = tty->column = 0;
			break;
		case '\t':
			goto break_out;
		case '\b':
			if (tty->column > 0)
				tty->column--;
			break;
		default:
			if (!FUNC6(c)) {
				if (FUNC1(tty))
					goto break_out;
				if (!FUNC5(c, tty))
					tty->column++;
			}
			break;
		}
	}
break_out:
	i = tty->ops->write(tty, buf, i);

	FUNC8(&tty->output_lock);
	return i;
}