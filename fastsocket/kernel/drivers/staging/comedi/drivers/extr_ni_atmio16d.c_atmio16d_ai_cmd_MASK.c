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
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {int chanlist_len; int scan_end_arg; int convert_arg; unsigned int stop_arg; int scan_begin_arg; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_4__ {int com_reg_1_state; int com_reg_2_state; } ;
struct TYPE_3__ {scalar_t__ cur_chan; struct comedi_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ AD_CLEAR_REG ; 
 scalar_t__ AM9513A_COM_REG ; 
 scalar_t__ AM9513A_DATA_REG ; 
 unsigned int CLOCK_100_KHZ ; 
 unsigned int CLOCK_10_KHZ ; 
 unsigned int CLOCK_1_KHZ ; 
 unsigned int CLOCK_1_MHZ ; 
 int COMREG1_1632CNT ; 
 int COMREG1_CONVINTEN ; 
 int COMREG1_DAQEN ; 
 int COMREG1_SCANEN ; 
 int COMREG2_INTEN ; 
 int COMREG2_SCN2 ; 
 scalar_t__ COM_REG_1 ; 
 scalar_t__ COM_REG_2 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT2CLR_REG ; 
 scalar_t__ MUX_CNTR_REG ; 
 scalar_t__ MUX_GAIN_REG ; 
 scalar_t__ START_DAQ_REG ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int timer, base_clock;
	unsigned int sample_count, tmp, chan, gain;
	int i;
#ifdef DEBUG1
	printk("atmio16d_ai_cmd\n");
#endif
	/* This is slowly becoming a working command interface. *
	 * It is still uber-experimental */

	FUNC4(dev);
	s->async->cur_chan = 0;

	/* check if scanning multiple channels */
	if (cmd->chanlist_len < 2) {
		devpriv->com_reg_1_state &= ~COMREG1_SCANEN;
		FUNC2(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
	} else {
		devpriv->com_reg_1_state |= COMREG1_SCANEN;
		devpriv->com_reg_2_state |= COMREG2_SCN2;
		FUNC2(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
		FUNC2(devpriv->com_reg_2_state, dev->iobase + COM_REG_2);
	}

	/* Setup the Mux-Gain Counter */
	for (i = 0; i < cmd->chanlist_len; ++i) {
		chan = FUNC0(cmd->chanlist[i]);
		gain = FUNC1(cmd->chanlist[i]);
		FUNC2(i, dev->iobase + MUX_CNTR_REG);
		tmp = chan | (gain << 6);
		if (i == cmd->scan_end_arg - 1)
			tmp |= 0x0010;	/* set LASTONE bit */
		FUNC2(tmp, dev->iobase + MUX_GAIN_REG);
	}

	/* Now program the sample interval timer */
	/* Figure out which clock to use then get an
	 * appropriate timer value */
	if (cmd->convert_arg < 65536000) {
		base_clock = CLOCK_1_MHZ;
		timer = cmd->convert_arg / 1000;
	} else if (cmd->convert_arg < 655360000) {
		base_clock = CLOCK_100_KHZ;
		timer = cmd->convert_arg / 10000;
	} else if (cmd->convert_arg <= 0xffffffff /* 6553600000 */ ) {
		base_clock = CLOCK_10_KHZ;
		timer = cmd->convert_arg / 100000;
	} else if (cmd->convert_arg <= 0xffffffff /* 65536000000 */ ) {
		base_clock = CLOCK_1_KHZ;
		timer = cmd->convert_arg / 1000000;
	}
	FUNC2(0xFF03, dev->iobase + AM9513A_COM_REG);
	FUNC2(base_clock, dev->iobase + AM9513A_DATA_REG);
	FUNC2(0xFF0B, dev->iobase + AM9513A_COM_REG);
	FUNC2(0x2, dev->iobase + AM9513A_DATA_REG);
	FUNC2(0xFF44, dev->iobase + AM9513A_COM_REG);
	FUNC2(0xFFF3, dev->iobase + AM9513A_COM_REG);
	FUNC2(timer, dev->iobase + AM9513A_DATA_REG);
	FUNC2(0xFF24, dev->iobase + AM9513A_COM_REG);

	/* Now figure out how many samples to get */
	/* and program the sample counter */
	sample_count = cmd->stop_arg * cmd->scan_end_arg;
	FUNC2(0xFF04, dev->iobase + AM9513A_COM_REG);
	FUNC2(0x1025, dev->iobase + AM9513A_DATA_REG);
	FUNC2(0xFF0C, dev->iobase + AM9513A_COM_REG);
	if (sample_count < 65536) {
		/* use only Counter 4 */
		FUNC2(sample_count, dev->iobase + AM9513A_DATA_REG);
		FUNC2(0xFF48, dev->iobase + AM9513A_COM_REG);
		FUNC2(0xFFF4, dev->iobase + AM9513A_COM_REG);
		FUNC2(0xFF28, dev->iobase + AM9513A_COM_REG);
		devpriv->com_reg_1_state &= ~COMREG1_1632CNT;
		FUNC2(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
	} else {
		/* Counter 4 and 5 are needed */

		tmp = sample_count & 0xFFFF;
		if (tmp)
			FUNC2(tmp - 1, dev->iobase + AM9513A_DATA_REG);
		else
			FUNC2(0xFFFF, dev->iobase + AM9513A_DATA_REG);

		FUNC2(0xFF48, dev->iobase + AM9513A_COM_REG);
		FUNC2(0, dev->iobase + AM9513A_DATA_REG);
		FUNC2(0xFF28, dev->iobase + AM9513A_COM_REG);
		FUNC2(0xFF05, dev->iobase + AM9513A_COM_REG);
		FUNC2(0x25, dev->iobase + AM9513A_DATA_REG);
		FUNC2(0xFF0D, dev->iobase + AM9513A_COM_REG);
		tmp = sample_count & 0xFFFF;
		if ((tmp == 0) || (tmp == 1)) {
			FUNC2((sample_count >> 16) & 0xFFFF,
			     dev->iobase + AM9513A_DATA_REG);
		} else {
			FUNC2(((sample_count >> 16) & 0xFFFF) + 1,
			     dev->iobase + AM9513A_DATA_REG);
		}
		FUNC2(0xFF70, dev->iobase + AM9513A_COM_REG);
		devpriv->com_reg_1_state |= COMREG1_1632CNT;
		FUNC2(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
	}

	/* Program the scan interval timer ONLY IF SCANNING IS ENABLED */
	/* Figure out which clock to use then get an
	 * appropriate timer value */
	if (cmd->chanlist_len > 1) {
		if (cmd->scan_begin_arg < 65536000) {
			base_clock = CLOCK_1_MHZ;
			timer = cmd->scan_begin_arg / 1000;
		} else if (cmd->scan_begin_arg < 655360000) {
			base_clock = CLOCK_100_KHZ;
			timer = cmd->scan_begin_arg / 10000;
		} else if (cmd->scan_begin_arg < 0xffffffff /* 6553600000 */ ) {
			base_clock = CLOCK_10_KHZ;
			timer = cmd->scan_begin_arg / 100000;
		} else if (cmd->scan_begin_arg < 0xffffffff /* 65536000000 */ ) {
			base_clock = CLOCK_1_KHZ;
			timer = cmd->scan_begin_arg / 1000000;
		}
		FUNC2(0xFF02, dev->iobase + AM9513A_COM_REG);
		FUNC2(base_clock, dev->iobase + AM9513A_DATA_REG);
		FUNC2(0xFF0A, dev->iobase + AM9513A_COM_REG);
		FUNC2(0x2, dev->iobase + AM9513A_DATA_REG);
		FUNC2(0xFF42, dev->iobase + AM9513A_COM_REG);
		FUNC2(0xFFF2, dev->iobase + AM9513A_COM_REG);
		FUNC2(timer, dev->iobase + AM9513A_DATA_REG);
		FUNC2(0xFF22, dev->iobase + AM9513A_COM_REG);
	}

	/* Clear the A/D FIFO and reset the MUX counter */
	FUNC2(0, dev->iobase + AD_CLEAR_REG);
	FUNC2(0, dev->iobase + MUX_CNTR_REG);
	FUNC2(0, dev->iobase + INT2CLR_REG);
	/* enable this acquisition operation */
	devpriv->com_reg_1_state |= COMREG1_DAQEN;
	FUNC2(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
	/* enable interrupts for conversion completion */
	devpriv->com_reg_1_state |= COMREG1_CONVINTEN;
	devpriv->com_reg_2_state |= COMREG2_INTEN;
	FUNC2(devpriv->com_reg_1_state, dev->iobase + COM_REG_1);
	FUNC2(devpriv->com_reg_2_state, dev->iobase + COM_REG_2);
	/* apply a trigger. this starts the counters! */
	FUNC2(0, dev->iobase + START_DAQ_REG);

	return 0;
}