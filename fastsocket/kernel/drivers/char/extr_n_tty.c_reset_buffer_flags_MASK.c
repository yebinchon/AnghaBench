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
struct tty_struct {int /*<<< orphan*/  read_flags; scalar_t__ erasing; scalar_t__ canon_data; scalar_t__ canon_head; int /*<<< orphan*/  echo_lock; scalar_t__ echo_overrun; scalar_t__ echo_cnt; scalar_t__ echo_pos; int /*<<< orphan*/  read_lock; scalar_t__ read_cnt; scalar_t__ read_tail; scalar_t__ read_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty)
{
	unsigned long flags;

	FUNC5(&tty->read_lock, flags);
	tty->read_head = tty->read_tail = tty->read_cnt = 0;
	FUNC6(&tty->read_lock, flags);

	FUNC2(&tty->echo_lock);
	tty->echo_pos = tty->echo_cnt = tty->echo_overrun = 0;
	FUNC3(&tty->echo_lock);

	tty->canon_head = tty->canon_data = tty->erasing = 0;
	FUNC1(&tty->read_flags, 0, sizeof tty->read_flags);
	FUNC4(tty);
	FUNC0(tty);
}