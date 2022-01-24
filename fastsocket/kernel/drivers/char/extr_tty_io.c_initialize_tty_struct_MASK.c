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
struct TYPE_2__ {int /*<<< orphan*/ * tail; int /*<<< orphan*/  head; } ;
struct tty_struct {int index; int /*<<< orphan*/  name; int /*<<< orphan*/  ops; struct tty_driver* driver; int /*<<< orphan*/  SAK_work; int /*<<< orphan*/  tty_files; int /*<<< orphan*/  ctrl_lock; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  echo_lock; int /*<<< orphan*/  output_lock; int /*<<< orphan*/  atomic_write_lock; int /*<<< orphan*/  atomic_read_lock; int /*<<< orphan*/  hangup_work; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  ldisc_mutex; int /*<<< orphan*/  termios_mutex; TYPE_1__ buf; int /*<<< orphan*/  overrun_time; int /*<<< orphan*/ * pgrp; int /*<<< orphan*/ * session; int /*<<< orphan*/  magic; int /*<<< orphan*/  kref; } ;
struct tty_driver {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTY_MAGIC ; 
 int /*<<< orphan*/  do_SAK_work ; 
 int /*<<< orphan*/  do_tty_hangup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_driver*,int,int /*<<< orphan*/ ) ; 

void FUNC10(struct tty_struct *tty,
		struct tty_driver *driver, int idx)
{
	FUNC4(tty, 0, sizeof(struct tty_struct));
	FUNC3(&tty->kref);
	tty->magic = TTY_MAGIC;
	FUNC8(tty);
	tty->session = NULL;
	tty->pgrp = NULL;
	tty->overrun_time = jiffies;
	tty->buf.head = *(tty->buf.tail = NULL);
	FUNC7(tty);
	FUNC5(&tty->termios_mutex);
	FUNC5(&tty->ldisc_mutex);
	FUNC2(&tty->write_wait);
	FUNC2(&tty->read_wait);
	FUNC1(&tty->hangup_work, do_tty_hangup);
	FUNC5(&tty->atomic_read_lock);
	FUNC5(&tty->atomic_write_lock);
	FUNC5(&tty->output_lock);
	FUNC5(&tty->echo_lock);
	FUNC6(&tty->read_lock);
	FUNC6(&tty->ctrl_lock);
	FUNC0(&tty->tty_files);
	FUNC1(&tty->SAK_work, do_SAK_work);

	tty->driver = driver;
	tty->ops = driver->ops;
	tty->index = idx;
	FUNC9(driver, idx, tty->name);
}