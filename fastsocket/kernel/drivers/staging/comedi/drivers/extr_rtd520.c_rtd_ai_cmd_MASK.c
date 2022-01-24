#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int /*<<< orphan*/  irq; } ;
struct comedi_cmd {int chanlist_len; int scan_begin_src; int flags; int scan_begin_arg; int stop_src; int stop_arg; int convert_src; int convert_arg; int /*<<< orphan*/  chanlist; } ;
struct TYPE_6__ {int flags; int fifoLen; int transCount; int aiCount; int /*<<< orphan*/  intMask; TYPE_2__* dma0Chain; scalar_t__ dma0Offset; scalar_t__ intCount; } ;
struct TYPE_5__ {int /*<<< orphan*/  next; } ;
struct TYPE_4__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int DMA0_ACTIVE ; 
 int /*<<< orphan*/  DMAS_ADFIFO_HALF_FULL ; 
 int DMA_CHAIN_COUNT ; 
 int /*<<< orphan*/  DMA_MODE_BITS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENXIO ; 
 int ICS_DMA0_A ; 
 int ICS_DMA0_E ; 
 int /*<<< orphan*/  IRQM_ADC_ABOUT_CNT ; 
 int PLX_CLEAR_DMA_INTR_BIT ; 
 int PLX_DMA_EN_BIT ; 
 int PLX_DMA_START_BIT ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct comedi_device*,int) ; 
 int SEND_EOS ; 
 int TRANS_TARGET_PERIOD ; 
#define  TRIG_COUNT 131 
#define  TRIG_EXT 130 
#define  TRIG_NONE 129 
 int /*<<< orphan*/  TRIG_ROUND_NEAREST ; 
#define  TRIG_TIMER 128 
 int TRIG_WAKE_EOS ; 
 int /*<<< orphan*/  FUNC24 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 TYPE_3__* devpriv ; 
 int /*<<< orphan*/  FUNC25 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC26 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	int timer;

	/* stop anything currently running */
	FUNC21(dev, 0);	/* stop on SOFTWARE stop */
	FUNC20(dev);	/* make sure PACER is stopped */
	FUNC4(dev, 0);	/* software trigger only */
	FUNC14(dev, 0);
#ifdef USE_DMA
	if (devpriv->flags & DMA0_ACTIVE) {	/* cancel anything running */
		RtdPlxInterruptWrite(dev,	/* disable any more interrupts */
				     RtdPlxInterruptRead(dev) & ~ICS_DMA0_E);
		abort_dma(dev, 0);
		devpriv->flags &= ~DMA0_ACTIVE;
		if (RtdPlxInterruptRead(dev) & ICS_DMA0_A) {	/*clear pending int */
			RtdDma0Control(dev, PLX_CLEAR_DMA_INTR_BIT);
		}
	}
	RtdDma0Reset(dev);	/* reset onboard state */
#endif /* USE_DMA */
	FUNC3(dev);	/* clear any old data */
	FUNC15(dev);
	devpriv->intCount = 0;

	if (!dev->irq) {	/* we need interrupts for this */
		FUNC0("rtd520: ERROR! No interrupt available!\n");
		return -ENXIO;
	}

	/* start configuration */
	/* load channel list and reset CGT */
	FUNC25(dev, cmd->chanlist_len, cmd->chanlist);

	/* setup the common case and override if needed */
	if (cmd->chanlist_len > 1) {
		/*DPRINTK ("rtd520: Multi channel setup\n"); */
		FUNC19(dev, 0);	/* software triggers pacer */
		FUNC6(dev, 1);	/* PACER triggers burst */
		FUNC4(dev, 2);	/* BURST triggers ADC */
	} else {		/* single channel */
		/*DPRINTK ("rtd520: single channel setup\n"); */
		FUNC19(dev, 0);	/* software triggers pacer */
		FUNC4(dev, 1);	/* PACER triggers ADC */
	}
	FUNC1(dev, devpriv->fifoLen / 2 - 1);	/* 1/2 FIFO */

	if (TRIG_TIMER == cmd->scan_begin_src) {
		/* scan_begin_arg is in nanoseconds */
		/* find out how many samples to wait before transferring */
		if (cmd->flags & TRIG_WAKE_EOS) {
			/* this may generate un-sustainable interrupt rates */
			/* the application is responsible for doing the right thing */
			devpriv->transCount = cmd->chanlist_len;
			devpriv->flags |= SEND_EOS;
		} else {
			/* arrange to transfer data periodically */
			devpriv->transCount
			    =
			    (TRANS_TARGET_PERIOD * cmd->chanlist_len) /
			    cmd->scan_begin_arg;
			if (devpriv->transCount < cmd->chanlist_len) {
				/* tranfer after each scan (and avoid 0) */
				devpriv->transCount = cmd->chanlist_len;
			} else {	/* make a multiple of scan length */
				devpriv->transCount =
				    (devpriv->transCount +
				     cmd->chanlist_len - 1)
				    / cmd->chanlist_len;
				devpriv->transCount *= cmd->chanlist_len;
			}
			devpriv->flags |= SEND_EOS;
		}
		if (devpriv->transCount >= (devpriv->fifoLen / 2)) {
			/* out of counter range, use 1/2 fifo instead */
			devpriv->transCount = 0;
			devpriv->flags &= ~SEND_EOS;
		} else {
			/* interrupt for each tranfer */
			FUNC1(dev, devpriv->transCount - 1);
		}

		FUNC0
		    ("rtd520: scanLen=%d tranferCount=%d fifoLen=%d\n  scanTime(ns)=%d flags=0x%x\n",
		     cmd->chanlist_len, devpriv->transCount, devpriv->fifoLen,
		     cmd->scan_begin_arg, devpriv->flags);
	} else {		/* unknown timing, just use 1/2 FIFO */
		devpriv->transCount = 0;
		devpriv->flags &= ~SEND_EOS;
	}
	FUNC16(dev, 1);	/* use INTERNAL 8Mhz clock source */
	FUNC2(dev, 1);	/* just interrupt, dont stop */

	/* BUG??? these look like enumerated values, but they are bit fields */

	/* First, setup when to stop */
	switch (cmd->stop_src) {
	case TRIG_COUNT:	/* stop after N scans */
		devpriv->aiCount = cmd->stop_arg * cmd->chanlist_len;
		if ((devpriv->transCount > 0)
		    && (devpriv->transCount > devpriv->aiCount)) {
			devpriv->transCount = devpriv->aiCount;
		}
		break;

	case TRIG_NONE:	/* stop when cancel is called */
		devpriv->aiCount = -1;	/* read forever */
		break;

	default:
		FUNC0("rtd520: Warning! ignoring stop_src mode %d\n",
			cmd->stop_src);
	}

	/* Scan timing */
	switch (cmd->scan_begin_src) {
	case TRIG_TIMER:	/* periodic scanning */
		timer = FUNC26(&cmd->scan_begin_arg,
					TRIG_ROUND_NEAREST);
		/* set PACER clock */
		/*DPRINTK ("rtd520: loading %d into pacer\n", timer); */
		FUNC17(dev, timer);

		break;

	case TRIG_EXT:
		FUNC19(dev, 1);	/* EXTERNALy trigger pacer */
		break;

	default:
		FUNC0("rtd520: Warning! ignoring scan_begin_src mode %d\n",
			cmd->scan_begin_src);
	}

	/* Sample timing within a scan */
	switch (cmd->convert_src) {
	case TRIG_TIMER:	/* periodic */
		if (cmd->chanlist_len > 1) {	/* only needed for multi-channel */
			timer = FUNC26(&cmd->convert_arg,
						TRIG_ROUND_NEAREST);
			/* setup BURST clock */
			/*DPRINTK ("rtd520: loading %d into burst\n", timer); */
			FUNC5(dev, timer);
		}

		break;

	case TRIG_EXT:		/* external */
		FUNC6(dev, 2);	/* EXTERNALy trigger burst */
		break;

	default:
		FUNC0("rtd520: Warning! ignoring convert_src mode %d\n",
			cmd->convert_src);
	}
	/* end configuration */

	/* This doesn't seem to work.  There is no way to clear an interrupt
	   that the priority controller has queued! */
	FUNC13(dev, ~0);	/* clear any existing flags */
	FUNC12(dev);

	/* TODO: allow multiple interrupt sources */
	if (devpriv->transCount > 0) {	/* transfer every N samples */
		FUNC14(dev, IRQM_ADC_ABOUT_CNT);
		FUNC0("rtd520: Transferring every %d\n", devpriv->transCount);
	} else {		/* 1/2 FIFO transfers */
#ifdef USE_DMA
		devpriv->flags |= DMA0_ACTIVE;

		/* point to first transfer in ring */
		devpriv->dma0Offset = 0;
		RtdDma0Mode(dev, DMA_MODE_BITS);
		RtdDma0Next(dev,	/* point to first block */
			    devpriv->dma0Chain[DMA_CHAIN_COUNT - 1].next);
		RtdDma0Source(dev, DMAS_ADFIFO_HALF_FULL);	/* set DMA trigger source */

		RtdPlxInterruptWrite(dev,	/* enable interrupt */
				     RtdPlxInterruptRead(dev) | ICS_DMA0_E);
		/* Must be 2 steps.  See PLX app note about "Starting a DMA transfer" */
		RtdDma0Control(dev, PLX_DMA_EN_BIT);	/* enable DMA (clear INTR?) */
		RtdDma0Control(dev, PLX_DMA_EN_BIT | PLX_DMA_START_BIT);	/*start DMA */
		DPRINTK("rtd520: Using DMA0 transfers. plxInt %x RtdInt %x\n",
			RtdPlxInterruptRead(dev), devpriv->intMask);
#else /* USE_DMA */
		FUNC14(dev, IRQM_ADC_ABOUT_CNT);
		FUNC0("rtd520: Transferring every 1/2 FIFO\n");
#endif /* USE_DMA */
	}

	/* BUG: start_src is ASSUMED to be TRIG_NOW */
	/* BUG? it seems like things are running before the "start" */
	FUNC18(dev);	/* Start PACER */
	return 0;
}