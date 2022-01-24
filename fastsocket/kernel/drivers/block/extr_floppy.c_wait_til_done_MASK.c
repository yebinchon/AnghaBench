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
struct TYPE_2__ {scalar_t__ reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int EIO ; 
 TYPE_1__* FDCS ; 
 int FD_COMMAND_ERROR ; 
 int FD_COMMAND_NONE ; 
 int FD_COMMAND_OKAY ; 
 scalar_t__ NO_SIGNAL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  command_done ; 
 int command_status ; 
 int /*<<< orphan*/ * cont ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  intr_cont ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC9(void (*handler)(void), int interruptible)
{
	int ret;

	FUNC7(handler);

	if (command_status < 2 && NO_SIGNAL) {
		FUNC0(wait, current);

		FUNC1(&command_done, &wait);
		for (;;) {
			FUNC8(interruptible ?
					  TASK_INTERRUPTIBLE :
					  TASK_UNINTERRUPTIBLE);

			if (command_status >= 2 || !NO_SIGNAL)
				break;

			FUNC3("wait_til_done");
			FUNC6();
		}

		FUNC8(TASK_RUNNING);
		FUNC4(&command_done, &wait);
	}

	if (command_status < 2) {
		FUNC2();
		cont = &intr_cont;
		FUNC5();
		return -EINTR;
	}

	if (FDCS->reset)
		command_status = FD_COMMAND_ERROR;
	if (command_status == FD_COMMAND_OKAY)
		ret = 0;
	else
		ret = -EIO;
	command_status = FD_COMMAND_NONE;
	return ret;
}