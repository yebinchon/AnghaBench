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
struct shutdown_trigger {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ON_HALT_STR ; 
 int /*<<< orphan*/  ON_PANIC_STR ; 
 int /*<<< orphan*/  ON_POFF_STR ; 
 int /*<<< orphan*/  ON_REIPL_STR ; 
 int /*<<< orphan*/  ON_RESTART_STR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* vmcmd_on_halt ; 
 char* vmcmd_on_panic ; 
 char* vmcmd_on_poff ; 
 char* vmcmd_on_reboot ; 
 char* vmcmd_on_restart ; 

__attribute__((used)) static void FUNC4(struct shutdown_trigger *trigger)
{
	char *cmd, *next_cmd;

	if (FUNC2(trigger->name, ON_REIPL_STR) == 0)
		cmd = vmcmd_on_reboot;
	else if (FUNC2(trigger->name, ON_PANIC_STR) == 0)
		cmd = vmcmd_on_panic;
	else if (FUNC2(trigger->name, ON_HALT_STR) == 0)
		cmd = vmcmd_on_halt;
	else if (FUNC2(trigger->name, ON_POFF_STR) == 0)
		cmd = vmcmd_on_poff;
	else if (FUNC2(trigger->name, ON_RESTART_STR) == 0)
		cmd = vmcmd_on_restart;
	else
		return;

	if (FUNC3(cmd) == 0)
		return;
	do {
		next_cmd = FUNC1(cmd, '\n');
		if (next_cmd) {
			next_cmd[0] = 0;
			next_cmd += 1;
		}
		FUNC0(cmd, NULL, 0, NULL);
		cmd = next_cmd;
	} while (cmd != NULL);
}