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
struct tty_struct {int /*<<< orphan*/  flags; scalar_t__ fasync; int /*<<< orphan*/  write_wait; TYPE_3__* ops; TYPE_2__* link; } ;
struct file {int f_flags; TYPE_1__* f_op; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int (* write ) (struct tty_struct*,unsigned char const*,size_t) ;int /*<<< orphan*/  (* flush_chars ) (struct tty_struct*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
struct TYPE_4__ {scalar_t__ write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EIO ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int O_NONBLOCK ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  TTY_HW_COOK_OUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (int,struct tty_struct*) ; 
 int FUNC7 (struct tty_struct*,unsigned char const*,size_t) ; 
 scalar_t__ redirected_tty_write ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 int FUNC14 (struct tty_struct*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct tty_struct*) ; 
 scalar_t__ FUNC17 (struct file*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t FUNC18(struct tty_struct *tty, struct file *file,
			   const unsigned char *buf, size_t nr)
{
	const unsigned char *b = buf;
	FUNC0(wait, current);
	int c;
	ssize_t retval = 0;

	/* Job control check -- must be done at start (POSIX.1 7.1.1.4). */
	if (FUNC1(tty) && file->f_op->write != redirected_tty_write) {
		retval = FUNC16(tty);
		if (retval)
			return retval;
	}

	/* Write out any echoed characters that are still pending */
	FUNC5(tty);

	FUNC4(&tty->write_wait, &wait);
	while (1) {
		FUNC11(TASK_INTERRUPTIBLE);
		if (FUNC12(current)) {
			retval = -ERESTARTSYS;
			break;
		}
		if (FUNC17(file) || (tty->link && !tty->link->count)) {
			retval = -EIO;
			break;
		}
		if (FUNC2(tty) && !(FUNC15(TTY_HW_COOK_OUT, &tty->flags))) {
			while (nr > 0) {
				ssize_t num = FUNC7(tty, b, nr);
				if (num < 0) {
					if (num == -EAGAIN)
						break;
					retval = num;
					goto break_out;
				}
				b += num;
				nr -= num;
				if (nr == 0)
					break;
				c = *b;
				if (FUNC6(c, tty) < 0)
					break;
				b++; nr--;
			}
			if (tty->ops->flush_chars)
				tty->ops->flush_chars(tty);
		} else {
			while (nr > 0) {
				c = tty->ops->write(tty, b, nr);
				if (c < 0) {
					retval = c;
					goto break_out;
				}
				if (!c)
					break;
				b += c;
				nr -= c;
			}
		}
		if (!nr)
			break;
		if (file->f_flags & O_NONBLOCK) {
			retval = -EAGAIN;
			break;
		}
		FUNC9();
	}
break_out:
	FUNC3(TASK_RUNNING);
	FUNC8(&tty->write_wait, &wait);
	if (b - buf != nr && tty->fasync)
		FUNC10(TTY_DO_WRITE_WAKEUP, &tty->flags);
	return (b - buf) ? b - buf : retval;
}