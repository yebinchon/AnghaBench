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
typedef  int uint32_t ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int scan_begin_src; int scan_begin_arg; int convert_arg; int /*<<< orphan*/  chanlist_len; } ;

/* Variables and functions */
 int TIMER_BASE ; 
#define  TRIG_FOLLOW 129 
#define  TRIG_TIMER 128 

__attribute__((used)) static uint32_t FUNC0(struct comedi_device *dev,
				     struct comedi_cmd *cmd)
{
	uint32_t count;
	/*  figure out how long we need to delay at end of scan */
	switch (cmd->scan_begin_src) {
	case TRIG_TIMER:
		count = (cmd->scan_begin_arg -
			 (cmd->convert_arg * (cmd->chanlist_len - 1)))
		    / TIMER_BASE;
		break;
	case TRIG_FOLLOW:
		count = cmd->convert_arg / TIMER_BASE;
		break;
	default:
		return 0;
		break;
	}
	return count - 3;
}