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
struct tty_struct {int read_cnt; int receive_room; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  canon_data; scalar_t__ icanon; } ;

/* Variables and functions */
 int N_TTY_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	int left;
	unsigned long flags;

	FUNC0(&tty->read_lock, flags);

	left = N_TTY_BUF_SIZE - tty->read_cnt - 1;
	/*
	 * If we are doing input canonicalization, and there are no
	 * pending newlines, let characters through without limit, so
	 * that erase characters will be handled.  Other excess
	 * characters will be beeped.
	 */
	if (left <= 0)
		left = tty->icanon && !tty->canon_data;
	tty->receive_room = left;

	FUNC1(&tty->read_lock, flags);
}