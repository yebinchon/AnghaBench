#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ timeout_fn ;
struct TYPE_8__ {unsigned long spinup; scalar_t__ select_delay; } ;
struct TYPE_7__ {unsigned long spinup_date; int flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* interrupt ) () ;int /*<<< orphan*/  (* error ) () ;} ;
struct TYPE_5__ {int flags; int cmd_count; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 TYPE_4__* DP ; 
 TYPE_3__* DRS ; 
 int FD_RAW_INTR ; 
 int FD_RAW_NEED_DISK ; 
 int FD_RAW_NO_MOTOR ; 
 int FD_RAW_READ ; 
 int FD_RAW_SPIN ; 
 int FD_RAW_WRITE ; 
 TYPE_2__* cont ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  do_floppy ; 
 scalar_t__ FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ floppy_start ; 
 int /*<<< orphan*/  inr ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  main_command_interrupt ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* raw_cmd ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC10(void)
{
	int i;
	int r;
	int flags;
	int dflags;
	unsigned long ready_date;
	timeout_fn function;

	flags = raw_cmd->flags;
	if (flags & (FD_RAW_READ | FD_RAW_WRITE))
		flags |= FD_RAW_INTR;

	if ((flags & FD_RAW_SPIN) && !(flags & FD_RAW_NO_MOTOR)) {
		ready_date = DRS->spinup_date + DP->spinup;
		/* If spinup will take a long time, rerun scandrives
		 * again just before spinup completion. Beware that
		 * after scandrives, we must again wait for selection.
		 */
		if (FUNC9(ready_date, jiffies + DP->select_delay)) {
			ready_date -= DP->select_delay;
			function = (timeout_fn) floppy_start;
		} else
			function = (timeout_fn) setup_rw_floppy;

		/* wait until the floppy is spinning fast enough */
		if (FUNC1(ready_date, function))
			return;
	}
	dflags = DRS->flags;

	if ((flags & FD_RAW_READ) || (flags & FD_RAW_WRITE))
		FUNC6();

	if (flags & FD_RAW_INTR)
		do_floppy = main_command_interrupt;

	r = 0;
	for (i = 0; i < raw_cmd->cmd_count; i++)
		r |= FUNC3(raw_cmd->cmd[i]);

	FUNC0("rw_command: ");

	if (r) {
		cont->error();
		FUNC4();
		return;
	}

	if (!(flags & FD_RAW_INTR)) {
		inr = FUNC5();
		cont->interrupt();
	} else if (flags & FD_RAW_NEED_DISK)
		FUNC2();
}