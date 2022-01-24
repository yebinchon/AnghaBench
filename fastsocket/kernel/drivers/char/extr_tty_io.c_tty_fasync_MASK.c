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
struct tty_struct {int minimum_to_wake; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  fasync; int /*<<< orphan*/  ctrl_lock; struct pid* pgrp; } ;
struct pid {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; scalar_t__ private_data; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int N_TTY_BUF_SIZE ; 
 int PIDTYPE_PGID ; 
 int PIDTYPE_PID ; 
 int FUNC0 (struct file*,struct pid*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (int,struct file*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pid*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pid* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct tty_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(int fd, struct file *filp, int on)
{
	struct tty_struct *tty;
	unsigned long flags;
	int retval = 0;

	FUNC3();
	tty = (struct tty_struct *)filp->private_data;
	if (FUNC8(tty, filp->f_path.dentry->d_inode, "tty_fasync"))
		goto out;

	retval = FUNC1(fd, filp, on, &tty->fasync);
	if (retval <= 0)
		goto out;

	if (on) {
		enum pid_type type;
		struct pid *pid;
		if (!FUNC10(&tty->read_wait))
			tty->minimum_to_wake = 1;
		FUNC5(&tty->ctrl_lock, flags);
		if (tty->pgrp) {
			pid = tty->pgrp;
			type = PIDTYPE_PGID;
		} else {
			pid = FUNC7(current);
			type = PIDTYPE_PID;
		}
		FUNC2(pid);
		FUNC6(&tty->ctrl_lock, flags);
		retval = FUNC0(filp, pid, type, 0);
		FUNC4(pid);
		if (retval)
			goto out;
	} else {
		if (!tty->fasync && !FUNC10(&tty->read_wait))
			tty->minimum_to_wake = N_TTY_BUF_SIZE;
	}
	retval = 0;
out:
	FUNC9();
	return retval;
}