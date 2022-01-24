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
struct TYPE_3__ {unsigned char cmd_off; unsigned char cmd_auto; } ;
struct TYPE_4__ {int /*<<< orphan*/  fanreg; TYPE_1__ cmd; } ;

/* Variables and functions */
 int ACERHDF_FAN_AUTO ; 
 int ACERHDF_FAN_OFF ; 
 TYPE_2__* bios_cfg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char) ; 
 int fanstate ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC3(int state)
{
	unsigned char cmd;

	if (verbose)
		FUNC2("fan %s\n", (state == ACERHDF_FAN_OFF) ?
				"OFF" : "ON");

	if ((state != ACERHDF_FAN_OFF) && (state != ACERHDF_FAN_AUTO)) {
		FUNC1("invalid fan state %d requested, setting to auto!\n",
			state);
		state = ACERHDF_FAN_AUTO;
	}

	cmd = (state == ACERHDF_FAN_OFF) ? bios_cfg->cmd.cmd_off
					 : bios_cfg->cmd.cmd_auto;
	fanstate = state;

	FUNC0(bios_cfg->fanreg, cmd);
}