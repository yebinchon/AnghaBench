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
struct comedi_device {int irq; scalar_t__ iobase; } ;
struct comedi_cmd {int /*<<< orphan*/  convert_arg; } ;
struct TYPE_4__ {scalar_t__ dma_rtc; int irq_blocked; int ai_act_scan; int ai_scans; int neverending_ai; int dma; int ai_mode; int /*<<< orphan*/  usefifo; int /*<<< orphan*/  i8253_osc_base; scalar_t__ dma_runs_to_end; scalar_t__ act_chanlist_pos; scalar_t__ irq_was_now_closed; scalar_t__ ai_act_chan; int /*<<< orphan*/  ai_n_chan; int /*<<< orphan*/  ai_chanlist; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  INT_TYPE_AI1_DMA_RTC 129 
 int INT_TYPE_AI1_FIFO ; 
 int INT_TYPE_AI1_INT ; 
#define  INT_TYPE_AI3_DMA_RTC 128 
 int INT_TYPE_AI3_FIFO ; 
 int INT_TYPE_AI3_INT ; 
 scalar_t__ PCL818_CNTENABLE ; 
 scalar_t__ PCL818_CONTROL ; 
 scalar_t__ PCL818_FI_ENABLE ; 
 int /*<<< orphan*/  TRIG_ROUND_NEAREST ; 
 unsigned int FUNC0 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(int mode, struct comedi_device *dev,
			      struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	int divisor1, divisor2;
	unsigned int seglen;

	FUNC6("pcl818_ai_cmd_mode()\n");
	if ((!dev->irq) && (!devpriv->dma_rtc)) {
		FUNC1(dev, "IRQ not defined!");
		return -EINVAL;
	}

	if (devpriv->irq_blocked)
		return -EBUSY;

	FUNC9(dev, -1, 0, 0);	/*  stop pacer */

	seglen = FUNC0(dev, s, devpriv->ai_chanlist,
				    devpriv->ai_n_chan);
	if (seglen < 1)
		return -EINVAL;
	FUNC8(dev, s, devpriv->ai_chanlist,
			   devpriv->ai_n_chan, seglen);

	FUNC10(1);

	devpriv->ai_act_scan = devpriv->ai_scans;
	devpriv->ai_act_chan = 0;
	devpriv->irq_blocked = 1;
	devpriv->irq_was_now_closed = 0;
	devpriv->neverending_ai = 0;
	devpriv->act_chanlist_pos = 0;
	devpriv->dma_runs_to_end = 0;

	if ((devpriv->ai_scans == 0) || (devpriv->ai_scans == -1))
		devpriv->neverending_ai = 1;	/* well, user want neverending */

	if (mode == 1) {
		FUNC2(devpriv->i8253_osc_base, &divisor1,
					  &divisor2, &cmd->convert_arg,
					  TRIG_ROUND_NEAREST);
		if (divisor1 == 1) {	/* PCL718/818 crash if any divisor is set to 1 */
			divisor1 = 2;
			divisor2 /= 2;
		}
		if (divisor2 == 1) {
			divisor2 = 2;
			divisor1 /= 2;
		}
	}

	FUNC3(0, dev->iobase + PCL818_CNTENABLE);	/* enable pacer */

	switch (devpriv->dma) {
	case 1:		/*  DMA */
	case 3:
		if (devpriv->dma_rtc == 0) {
			FUNC4(mode, dev, s);
		}
#ifdef unused
		else {
			pcl818_ai_mode13dma_rtc(mode, dev, s);
		}
#else
		else {
			return -EINVAL;
		}
#endif
		break;
	case 0:
		if (!devpriv->usefifo) {
			/* IRQ */
			/* printk("IRQ\n"); */
			if (mode == 1) {
				devpriv->ai_mode = INT_TYPE_AI1_INT;
				/* Pacer+IRQ */
				FUNC3(0x83 | (dev->irq << 4),
				     dev->iobase + PCL818_CONTROL);
			} else {
				devpriv->ai_mode = INT_TYPE_AI3_INT;
				/* Ext trig+IRQ */
				FUNC3(0x82 | (dev->irq << 4),
				     dev->iobase + PCL818_CONTROL);
			}
		} else {
			/* FIFO */
			/* enable FIFO */
			FUNC3(1, dev->iobase + PCL818_FI_ENABLE);
			if (mode == 1) {
				devpriv->ai_mode = INT_TYPE_AI1_FIFO;
				/* Pacer */
				FUNC3(0x03, dev->iobase + PCL818_CONTROL);
			} else {
				devpriv->ai_mode = INT_TYPE_AI3_FIFO;
				FUNC3(0x02, dev->iobase + PCL818_CONTROL);
			}
		}
	}

	FUNC9(dev, mode, divisor1, divisor2);

#ifdef unused
	switch (devpriv->ai_mode) {
	case INT_TYPE_AI1_DMA_RTC:
	case INT_TYPE_AI3_DMA_RTC:
		set_rtc_irq_bit(1);	/* start RTC */
		break;
	}
#endif
	FUNC6("pcl818_ai_cmd_mode() end\n");
	return 0;
}