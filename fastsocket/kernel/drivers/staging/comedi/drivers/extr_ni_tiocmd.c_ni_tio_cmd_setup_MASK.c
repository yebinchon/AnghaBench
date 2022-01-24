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
struct ni_gpct {int /*<<< orphan*/  counter_index; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; unsigned int scan_begin_arg; scalar_t__ convert_src; unsigned int convert_arg; int flags; } ;
struct comedi_async {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRIG_EXT ; 
 int TRIG_WAKE_EOS ; 
 int /*<<< orphan*/  FUNC2 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ni_gpct*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct ni_gpct *counter, struct comedi_async *async)
{
	struct comedi_cmd *cmd = &async->cmd;
	int set_gate_source = 0;
	unsigned gate_source;
	int retval = 0;

	if (cmd->scan_begin_src == TRIG_EXT) {
		set_gate_source = 1;
		gate_source = cmd->scan_begin_arg;
	} else if (cmd->convert_src == TRIG_EXT) {
		set_gate_source = 1;
		gate_source = cmd->convert_arg;
	}
	if (set_gate_source) {
		retval = FUNC3(counter, 0, gate_source);
	}
	if (cmd->flags & TRIG_WAKE_EOS) {
		FUNC2(counter,
				FUNC1(counter->
							      counter_index),
				FUNC0(counter->
							     counter_index),
				FUNC0(counter->
							     counter_index));
	}
	return retval;
}