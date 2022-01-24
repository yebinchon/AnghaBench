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
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  MODE_MULT_CHAN_DOWN 130 
#define  MODE_MULT_CHAN_UP 129 
 int MODE_SINGLE_CHAN ; 
#define  MODE_SINGLE_CHAN_INTERVAL 128 
 int /*<<< orphan*/  FUNC3 (struct comedi_device const*,char*) ; 
 int FUNC4 (struct comedi_cmd const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(const struct comedi_device *dev,
				     const struct comedi_cmd *cmd)
{
	int mode, channel, range, aref, i;

	if (cmd->chanlist == NULL)
		return 0;

	mode = FUNC4(cmd);

	if (mode == MODE_SINGLE_CHAN)
		return 0;

	if (mode == MODE_SINGLE_CHAN_INTERVAL) {
		if (cmd->chanlist_len > 0xff) {
			FUNC3(dev,
				     "ni_labpc: chanlist too long for single channel interval mode\n");
			return 1;
		}
	}

	channel = FUNC1(cmd->chanlist[0]);
	range = FUNC2(cmd->chanlist[0]);
	aref = FUNC0(cmd->chanlist[0]);

	for (i = 0; i < cmd->chanlist_len; i++) {

		switch (mode) {
		case MODE_SINGLE_CHAN_INTERVAL:
			if (FUNC1(cmd->chanlist[i]) != channel) {
				FUNC3(dev,
					     "channel scanning order specified in chanlist is not supported by hardware.\n");
				return 1;
			}
			break;
		case MODE_MULT_CHAN_UP:
			if (FUNC1(cmd->chanlist[i]) != i) {
				FUNC3(dev,
					     "channel scanning order specified in chanlist is not supported by hardware.\n");
				return 1;
			}
			break;
		case MODE_MULT_CHAN_DOWN:
			if (FUNC1(cmd->chanlist[i]) !=
			    cmd->chanlist_len - i - 1) {
				FUNC3(dev,
					     "channel scanning order specified in chanlist is not supported by hardware.\n");
				return 1;
			}
			break;
		default:
			FUNC5("ni_labpc: bug! in chanlist check\n");
			return 1;
			break;
		}

		if (FUNC2(cmd->chanlist[i]) != range) {
			FUNC3(dev,
				     "entries in chanlist must all have the same range\n");
			return 1;
		}

		if (FUNC0(cmd->chanlist[i]) != aref) {
			FUNC3(dev,
				     "entries in chanlist must all have the same reference\n");
			return 1;
		}
	}

	return 0;
}