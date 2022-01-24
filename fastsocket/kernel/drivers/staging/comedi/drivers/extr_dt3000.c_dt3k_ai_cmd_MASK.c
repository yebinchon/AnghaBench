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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int scan_end_arg; scalar_t__ convert_src; int flags; scalar_t__ scan_begin_src; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/  convert_arg; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_4__ {scalar_t__ io_addr; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int AI_FIFO_DEPTH ; 
 unsigned int AREF_DIFF ; 
 int /*<<< orphan*/  CMD_CONFIG ; 
 int /*<<< orphan*/  CMD_START ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DPR_ADC_buffer ; 
 scalar_t__ DPR_Int_Mask ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ DPR_SubSys ; 
 int DT3000_ADFULL ; 
 int DT3000_ADHWERR ; 
 int DT3000_ADSWERR ; 
 unsigned int DT3000_AD_RETRIG_INTERNAL ; 
 int SUBS_AI ; 
 int TRIG_ROUND_MASK ; 
 scalar_t__ TRIG_TIMER ; 
 scalar_t__ debug_n_ints ; 
 TYPE_2__* devpriv ; 
 unsigned int FUNC4 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	int i;
	unsigned int chan, range, aref;
	unsigned int divider;
	unsigned int tscandiv;
	int ret;
	unsigned int mode;

	FUNC6("dt3k_ai_cmd:\n");
	for (i = 0; i < cmd->chanlist_len; i++) {
		chan = FUNC1(cmd->chanlist[i]);
		range = FUNC2(cmd->chanlist[i]);

		FUNC7((range << 6) | chan,
		       devpriv->io_addr + DPR_ADC_buffer + i);
	}
	aref = FUNC0(cmd->chanlist[0]);

	FUNC7(cmd->scan_end_arg, devpriv->io_addr + FUNC3(0));
	FUNC6("param[0]=0x%04x\n", cmd->scan_end_arg);

	if (cmd->convert_src == TRIG_TIMER) {
		divider = FUNC4(50, &cmd->convert_arg,
					   cmd->flags & TRIG_ROUND_MASK);
		FUNC7((divider >> 16), devpriv->io_addr + FUNC3(1));
		FUNC6("param[1]=0x%04x\n", divider >> 16);
		FUNC7((divider & 0xffff), devpriv->io_addr + FUNC3(2));
		FUNC6("param[2]=0x%04x\n", divider & 0xffff);
	} else {
		/* not supported */
	}

	if (cmd->scan_begin_src == TRIG_TIMER) {
		tscandiv = FUNC4(100, &cmd->scan_begin_arg,
					    cmd->flags & TRIG_ROUND_MASK);
		FUNC7((tscandiv >> 16), devpriv->io_addr + FUNC3(3));
		FUNC6("param[3]=0x%04x\n", tscandiv >> 16);
		FUNC7((tscandiv & 0xffff), devpriv->io_addr + FUNC3(4));
		FUNC6("param[4]=0x%04x\n", tscandiv & 0xffff);
	} else {
		/* not supported */
	}

	mode = DT3000_AD_RETRIG_INTERNAL | 0 | 0;
	FUNC7(mode, devpriv->io_addr + FUNC3(5));
	FUNC6("param[5]=0x%04x\n", mode);
	FUNC7(aref == AREF_DIFF, devpriv->io_addr + FUNC3(6));
	FUNC6("param[6]=0x%04x\n", aref == AREF_DIFF);

	FUNC7(AI_FIFO_DEPTH / 2, devpriv->io_addr + FUNC3(7));
	FUNC6("param[7]=0x%04x\n", AI_FIFO_DEPTH / 2);

	FUNC7(SUBS_AI, devpriv->io_addr + DPR_SubSys);
	ret = FUNC5(dev, CMD_CONFIG);

	FUNC7(DT3000_ADFULL | DT3000_ADSWERR | DT3000_ADHWERR,
	       devpriv->io_addr + DPR_Int_Mask);

	debug_n_ints = 0;

	FUNC7(SUBS_AI, devpriv->io_addr + DPR_SubSys);
	ret = FUNC5(dev, CMD_START);

	return 0;
}