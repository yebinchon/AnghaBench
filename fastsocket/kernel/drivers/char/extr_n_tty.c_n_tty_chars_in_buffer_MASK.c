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
struct tty_struct {scalar_t__ read_cnt; scalar_t__ canon_head; scalar_t__ read_tail; int /*<<< orphan*/  read_lock; scalar_t__ canon_data; int /*<<< orphan*/  icanon; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ N_TTY_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC2(struct tty_struct *tty)
{
	unsigned long flags;
	ssize_t n = 0;

	FUNC0(&tty->read_lock, flags);
	if (!tty->icanon) {
		n = tty->read_cnt;
	} else if (tty->canon_data) {
		n = (tty->canon_head > tty->read_tail) ?
			tty->canon_head - tty->read_tail :
			tty->canon_head + (N_TTY_BUF_SIZE - tty->read_tail);
	}
	FUNC1(&tty->read_lock, flags);
	return n;
}