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
struct comedi_cmd {scalar_t__ convert_src; scalar_t__ scan_begin_src; unsigned int scan_begin_arg; unsigned int convert_arg; } ;

/* Variables and functions */
 scalar_t__ MODE_SINGLE_CHAN ; 
 scalar_t__ TRIG_TIMER ; 
 scalar_t__ FUNC0 (struct comedi_cmd*) ; 

__attribute__((used)) static void FUNC1(struct comedi_cmd *cmd, unsigned int ns)
{
	if (cmd->convert_src != TRIG_TIMER)
		return;

	if (FUNC0(cmd) == MODE_SINGLE_CHAN &&
	    cmd->scan_begin_src == TRIG_TIMER) {
		cmd->scan_begin_arg = ns;
		if (cmd->convert_arg > cmd->scan_begin_arg)
			cmd->convert_arg = cmd->scan_begin_arg;
	} else
		cmd->convert_arg = ns;
}