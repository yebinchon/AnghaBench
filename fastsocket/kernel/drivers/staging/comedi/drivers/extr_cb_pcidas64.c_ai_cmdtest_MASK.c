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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; int convert_arg; int chanlist_len; int scan_begin_arg; int scan_end_arg; int stop_arg; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_2__ {scalar_t__ layout; int ai_speed; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LAYOUT_4020 ; 
#define  TRIG_COUNT 130 
#define  TRIG_EXT 129 
 unsigned int TRIG_FOLLOW ; 
#define  TRIG_NONE 128 
 unsigned int TRIG_NOW ; 
 unsigned int TRIG_OTHER ; 
 unsigned int TRIG_TIMER ; 
 TYPE_1__* FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,char*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s,
		      struct comedi_cmd *cmd)
{
	int err = 0;
	int tmp;
	unsigned int tmp_arg, tmp_arg2;
	int i;
	int aref;
	unsigned int triggers;

	/* step 1: make sure trigger sources are trivially valid */

	tmp = cmd->start_src;
	cmd->start_src &= TRIG_NOW | TRIG_EXT;
	if (!cmd->start_src || tmp != cmd->start_src)
		err++;

	tmp = cmd->scan_begin_src;
	triggers = TRIG_TIMER;
	if (FUNC2(dev)->layout == LAYOUT_4020)
		triggers |= TRIG_OTHER;
	else
		triggers |= TRIG_FOLLOW;
	cmd->scan_begin_src &= triggers;
	if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
		err++;

	tmp = cmd->convert_src;
	triggers = TRIG_TIMER;
	if (FUNC2(dev)->layout == LAYOUT_4020)
		triggers |= TRIG_NOW;
	else
		triggers |= TRIG_EXT;
	cmd->convert_src &= triggers;
	if (!cmd->convert_src || tmp != cmd->convert_src)
		err++;

	tmp = cmd->scan_end_src;
	cmd->scan_end_src &= TRIG_COUNT;
	if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
		err++;

	tmp = cmd->stop_src;
	cmd->stop_src &= TRIG_COUNT | TRIG_EXT | TRIG_NONE;
	if (!cmd->stop_src || tmp != cmd->stop_src)
		err++;

	if (err)
		return 1;

	/* step 2: make sure trigger sources are unique and mutually compatible */

	/*  uniqueness check */
	if (cmd->start_src != TRIG_NOW && cmd->start_src != TRIG_EXT)
		err++;
	if (cmd->scan_begin_src != TRIG_TIMER &&
	    cmd->scan_begin_src != TRIG_OTHER &&
	    cmd->scan_begin_src != TRIG_FOLLOW)
		err++;
	if (cmd->convert_src != TRIG_TIMER &&
	    cmd->convert_src != TRIG_EXT && cmd->convert_src != TRIG_NOW)
		err++;
	if (cmd->stop_src != TRIG_COUNT &&
	    cmd->stop_src != TRIG_NONE && cmd->stop_src != TRIG_EXT)
		err++;

	/*  compatibility check */
	if (cmd->convert_src == TRIG_EXT && cmd->scan_begin_src == TRIG_TIMER)
		err++;
	if (cmd->stop_src != TRIG_COUNT &&
	    cmd->stop_src != TRIG_NONE && cmd->stop_src != TRIG_EXT)
		err++;

	if (err)
		return 2;

	/* step 3: make sure arguments are trivially compatible */

	if (cmd->convert_src == TRIG_TIMER) {
		if (FUNC2(dev)->layout == LAYOUT_4020) {
			if (cmd->convert_arg) {
				cmd->convert_arg = 0;
				err++;
			}
		} else {
			if (cmd->convert_arg < FUNC2(dev)->ai_speed) {
				cmd->convert_arg = FUNC2(dev)->ai_speed;
				err++;
			}
			if (cmd->scan_begin_src == TRIG_TIMER) {
				/*  if scans are timed faster than conversion rate allows */
				if (cmd->convert_arg * cmd->chanlist_len >
				    cmd->scan_begin_arg) {
					cmd->scan_begin_arg =
					    cmd->convert_arg *
					    cmd->chanlist_len;
					err++;
				}
			}
		}
	}

	if (!cmd->chanlist_len) {
		cmd->chanlist_len = 1;
		err++;
	}
	if (cmd->scan_end_arg != cmd->chanlist_len) {
		cmd->scan_end_arg = cmd->chanlist_len;
		err++;
	}

	switch (cmd->stop_src) {
	case TRIG_EXT:
		break;
	case TRIG_COUNT:
		if (!cmd->stop_arg) {
			cmd->stop_arg = 1;
			err++;
		}
		break;
	case TRIG_NONE:
		if (cmd->stop_arg != 0) {
			cmd->stop_arg = 0;
			err++;
		}
		break;
	default:
		break;
	}

	if (err)
		return 3;

	/* step 4: fix up any arguments */

	if (cmd->convert_src == TRIG_TIMER) {
		tmp_arg = cmd->convert_arg;
		tmp_arg2 = cmd->scan_begin_arg;
		FUNC3(dev, cmd);
		if (tmp_arg != cmd->convert_arg)
			err++;
		if (tmp_arg2 != cmd->scan_begin_arg)
			err++;
	}

	if (err)
		return 4;

	/*  make sure user is doesn't change analog reference mid chanlist */
	if (cmd->chanlist) {
		aref = FUNC0(cmd->chanlist[0]);
		for (i = 1; i < cmd->chanlist_len; i++) {
			if (aref != FUNC0(cmd->chanlist[i])) {
				FUNC4(dev,
					     "all elements in chanlist must use the same analog reference");
				err++;
				break;
			}
		}
		/*  check 4020 chanlist */
		if (FUNC2(dev)->layout == LAYOUT_4020) {
			unsigned int first_channel = FUNC1(cmd->chanlist[0]);
			for (i = 1; i < cmd->chanlist_len; i++) {
				if (FUNC1(cmd->chanlist[i]) !=
				    first_channel + i) {
					FUNC4(dev,
						     "chanlist must use consecutive channels");
					err++;
					break;
				}
			}
			if (cmd->chanlist_len == 3) {
				FUNC4(dev,
					     "chanlist cannot be 3 channels long, use 1, 2, or 4 channels");
				err++;
			}
		}
	}

	if (err)
		return 5;

	return 0;
}