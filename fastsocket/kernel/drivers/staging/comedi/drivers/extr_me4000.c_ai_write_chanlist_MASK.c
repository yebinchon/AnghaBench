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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel_list_reg; } ;
struct TYPE_4__ {TYPE_1__ ai_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int ME4000_AI_LIST_INPUT_DIFFERENTIAL ; 
 unsigned int ME4000_AI_LIST_INPUT_SINGLE_ENDED ; 
 unsigned int ME4000_AI_LIST_RANGE_BIPOLAR_10 ; 
 unsigned int ME4000_AI_LIST_RANGE_BIPOLAR_2_5 ; 
 unsigned int ME4000_AI_LIST_RANGE_UNIPOLAR_10 ; 
 unsigned int ME4000_AI_LIST_RANGE_UNIPOLAR_2_5 ; 
 unsigned int SDF_DIFF ; 
 TYPE_2__* info ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			     struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
	unsigned int entry;
	unsigned int chan;
	unsigned int rang;
	unsigned int aref;
	int i;

	FUNC0("In ai_write_chanlist()\n");

	for (i = 0; i < cmd->chanlist_len; i++) {
		chan = FUNC2(cmd->chanlist[i]);
		rang = FUNC3(cmd->chanlist[i]);
		aref = FUNC1(cmd->chanlist[i]);

		entry = chan;

		if (rang == 0) {
			entry |= ME4000_AI_LIST_RANGE_UNIPOLAR_2_5;
		} else if (rang == 1) {
			entry |= ME4000_AI_LIST_RANGE_UNIPOLAR_10;
		} else if (rang == 2) {
			entry |= ME4000_AI_LIST_RANGE_BIPOLAR_2_5;
		} else {
			entry |= ME4000_AI_LIST_RANGE_BIPOLAR_10;
		}

		if (aref == SDF_DIFF) {
			entry |= ME4000_AI_LIST_INPUT_DIFFERENTIAL;
		} else {
			entry |= ME4000_AI_LIST_INPUT_SINGLE_ENDED;
		}

		FUNC4(dev, entry, info->ai_context.channel_list_reg);
	}

	return 0;
}