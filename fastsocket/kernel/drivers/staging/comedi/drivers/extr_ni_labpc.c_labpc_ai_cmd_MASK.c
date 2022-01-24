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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; int /*<<< orphan*/  irq; } ;
struct comedi_cmd {int stop_src; int stop_arg; int chanlist_len; int flags; scalar_t__ convert_src; scalar_t__ scan_begin_src; int start_src; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
typedef  enum transfer_type { ____Placeholder_transfer_type } transfer_type ;
struct TYPE_4__ {int command2_bits; int command3_bits; int count; int current_transfer; int command6_bits; int command1_bits; int command4_bits; int divisor_b0; int divisor_a0; int divisor_b1; int dma_transfer_size; int /*<<< orphan*/  (* write_byte ) (int,scalar_t__) ;scalar_t__ dma_chan; int /*<<< orphan*/  dma_buffer; } ;
struct TYPE_3__ {scalar_t__ bustype; scalar_t__ register_layout; int* ai_range_code; scalar_t__* ai_range_is_unipolar; } ;

/* Variables and functions */
 int A1_INTR_EN_BIT ; 
 int FUNC0 (int) ; 
 int ADC_COMMON_BIT ; 
 int ADC_DIFF_BIT ; 
 int ADC_FHF_INTR_EN_BIT ; 
 int ADC_FNE_INTR_EN_BIT ; 
 int ADC_SCAN_EN_BIT ; 
 int ADC_SCAN_UP_BIT ; 
 int ADC_UNIP_BIT ; 
 int AREF_DIFF ; 
 int AREF_GROUND ; 
 int CASCADE_BIT ; 
 scalar_t__ COMMAND1_REG ; 
 scalar_t__ COMMAND2_REG ; 
 scalar_t__ COMMAND3_REG ; 
 scalar_t__ COMMAND4_REG ; 
 scalar_t__ COMMAND6_REG ; 
 scalar_t__ COUNTER_A_BASE_REG ; 
 scalar_t__ COUNTER_A_CONTROL_REG ; 
 scalar_t__ COUNTER_B_BASE_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int DMATC_INTR_EN_BIT ; 
 int DMA_EN_BIT ; 
 int ERR_INTR_EN_BIT ; 
 int EXT_CONVERT_DISABLE_BIT ; 
 int EXT_SCAN_EN_BIT ; 
 int HWTRIG_BIT ; 
 int INIT_A0_BITS ; 
 int INIT_A1_BITS ; 
 scalar_t__ INTERVAL_COUNT_REG ; 
 int INTERVAL_LOAD_BITS ; 
 scalar_t__ INTERVAL_LOAD_REG ; 
 int INTERVAL_SCAN_EN_BIT ; 
 scalar_t__ MODE_MULT_CHAN_DOWN ; 
 scalar_t__ MODE_MULT_CHAN_UP ; 
 scalar_t__ MODE_SINGLE_CHAN ; 
 int PRETRIG_BIT ; 
 int SWTRIG_BIT ; 
#define  TRIG_COUNT 131 
#define  TRIG_EXT 130 
#define  TRIG_NONE 129 
#define  TRIG_NOW 128 
 int TRIG_RT ; 
 scalar_t__ TRIG_TIMER ; 
 int TRIG_WAKE_EOS ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int fifo_half_full_transfer ; 
 int fifo_not_empty_transfer ; 
 scalar_t__ isa_bustype ; 
 int isa_dma_transfer ; 
 scalar_t__ labpc_1200_layout ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,struct comedi_cmd*) ; 
 scalar_t__ FUNC10 (struct comedi_cmd*) ; 
 scalar_t__ FUNC11 (struct comedi_cmd*) ; 
 scalar_t__ FUNC12 (struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC13 (struct comedi_device*) ; 
 int FUNC14 (struct comedi_device*,scalar_t__,int,int,int) ; 
 int FUNC15 (struct comedi_cmd) ; 
 scalar_t__ FUNC16 (struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long) ; 
 int sample_size ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (int,scalar_t__) ; 
 TYPE_1__* thisboard ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC36(struct comedi_device *dev, struct comedi_subdevice *s)
{
	int channel, range, aref;
	unsigned long irq_flags;
	int ret;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	enum transfer_type xfer;
	unsigned long flags;

	if (!dev->irq) {
		FUNC6(dev, "no irq assigned, cannot perform command");
		return -1;
	}

	range = FUNC3(cmd->chanlist[0]);
	aref = FUNC1(cmd->chanlist[0]);

	/*  make sure board is disabled before setting up aquisition */
	FUNC20(&dev->spinlock, flags);
	devpriv->command2_bits &= ~SWTRIG_BIT & ~HWTRIG_BIT & ~PRETRIG_BIT;
	devpriv->write_byte(devpriv->command2_bits, dev->iobase + COMMAND2_REG);
	FUNC21(&dev->spinlock, flags);

	devpriv->command3_bits = 0;
	devpriv->write_byte(devpriv->command3_bits, dev->iobase + COMMAND3_REG);

	/*  initialize software conversion count */
	if (cmd->stop_src == TRIG_COUNT) {
		devpriv->count = cmd->stop_arg * cmd->chanlist_len;
	}
	/*  setup hardware conversion counter */
	if (cmd->stop_src == TRIG_EXT) {
		/*  load counter a1 with count of 3 (pc+ manual says this is minimum allowed) using mode 0 */
		ret = FUNC14(dev, dev->iobase + COUNTER_A_BASE_REG,
					 1, 3, 0);
		if (ret < 0) {
			FUNC6(dev, "error loading counter a1");
			return -1;
		}
	} else			/*  otherwise, just put a1 in mode 0 with no count to set its output low */
		devpriv->write_byte(INIT_A1_BITS,
				    dev->iobase + COUNTER_A_CONTROL_REG);

	/*  figure out what method we will use to transfer data */
	if (devpriv->dma_chan &&	/*  need a dma channel allocated */
	    /*  dma unsafe at RT priority, and too much setup time for TRIG_WAKE_EOS for */
	    (cmd->flags & (TRIG_WAKE_EOS | TRIG_RT)) == 0 &&
	    /*  only available on the isa boards */
	    thisboard->bustype == isa_bustype) {
		xfer = isa_dma_transfer;
	} else if (thisboard->register_layout == labpc_1200_layout &&	/*  pc-plus has no fifo-half full interrupt */
		   /*  wake-end-of-scan should interrupt on fifo not empty */
		   (cmd->flags & TRIG_WAKE_EOS) == 0 &&
		   /*  make sure we are taking more than just a few points */
		   (cmd->stop_src != TRIG_COUNT || devpriv->count > 256)) {
		xfer = fifo_half_full_transfer;
	} else
		xfer = fifo_not_empty_transfer;
	devpriv->current_transfer = xfer;

	/*  setup command6 register for 1200 boards */
	if (thisboard->register_layout == labpc_1200_layout) {
		/*  reference inputs to ground or common? */
		if (aref != AREF_GROUND)
			devpriv->command6_bits |= ADC_COMMON_BIT;
		else
			devpriv->command6_bits &= ~ADC_COMMON_BIT;
		/*  bipolar or unipolar range? */
		if (thisboard->ai_range_is_unipolar[range])
			devpriv->command6_bits |= ADC_UNIP_BIT;
		else
			devpriv->command6_bits &= ~ADC_UNIP_BIT;
		/*  interrupt on fifo half full? */
		if (xfer == fifo_half_full_transfer)
			devpriv->command6_bits |= ADC_FHF_INTR_EN_BIT;
		else
			devpriv->command6_bits &= ~ADC_FHF_INTR_EN_BIT;
		/*  enable interrupt on counter a1 terminal count? */
		if (cmd->stop_src == TRIG_EXT)
			devpriv->command6_bits |= A1_INTR_EN_BIT;
		else
			devpriv->command6_bits &= ~A1_INTR_EN_BIT;
		/*  are we scanning up or down through channels? */
		if (FUNC11(cmd) == MODE_MULT_CHAN_UP)
			devpriv->command6_bits |= ADC_SCAN_UP_BIT;
		else
			devpriv->command6_bits &= ~ADC_SCAN_UP_BIT;
		/*  write to register */
		devpriv->write_byte(devpriv->command6_bits,
				    dev->iobase + COMMAND6_REG);
	}

	/* setup channel list, etc (command1 register) */
	devpriv->command1_bits = 0;
	if (FUNC11(cmd) == MODE_MULT_CHAN_UP)
		channel = FUNC2(cmd->chanlist[cmd->chanlist_len - 1]);
	else
		channel = FUNC2(cmd->chanlist[0]);
	/*  munge channel bits for differential / scan disabled mode */
	if (FUNC11(cmd) != MODE_SINGLE_CHAN && aref == AREF_DIFF)
		channel *= 2;
	devpriv->command1_bits |= FUNC0(channel);
	devpriv->command1_bits |= thisboard->ai_range_code[range];
	devpriv->write_byte(devpriv->command1_bits, dev->iobase + COMMAND1_REG);
	/*  manual says to set scan enable bit on second pass */
	if (FUNC11(cmd) == MODE_MULT_CHAN_UP ||
	    FUNC11(cmd) == MODE_MULT_CHAN_DOWN) {
		devpriv->command1_bits |= ADC_SCAN_EN_BIT;
		/* need a brief delay before enabling scan, or scan list will get screwed when you switch
		 * between scan up to scan down mode - dunno why */
		FUNC34(1);
		devpriv->write_byte(devpriv->command1_bits,
				    dev->iobase + COMMAND1_REG);
	}
	/*  setup any external triggering/pacing (command4 register) */
	devpriv->command4_bits = 0;
	if (cmd->convert_src != TRIG_EXT)
		devpriv->command4_bits |= EXT_CONVERT_DISABLE_BIT;
	/* XXX should discard first scan when using interval scanning
	 * since manual says it is not synced with scan clock */
	if (FUNC16(cmd) == 0) {
		devpriv->command4_bits |= INTERVAL_SCAN_EN_BIT;
		if (cmd->scan_begin_src == TRIG_EXT)
			devpriv->command4_bits |= EXT_SCAN_EN_BIT;
	}
	/*  single-ended/differential */
	if (aref == AREF_DIFF)
		devpriv->command4_bits |= ADC_DIFF_BIT;
	devpriv->write_byte(devpriv->command4_bits, dev->iobase + COMMAND4_REG);

	devpriv->write_byte(cmd->chanlist_len,
			    dev->iobase + INTERVAL_COUNT_REG);
	/*  load count */
	devpriv->write_byte(INTERVAL_LOAD_BITS,
			    dev->iobase + INTERVAL_LOAD_REG);

	if (cmd->convert_src == TRIG_TIMER || cmd->scan_begin_src == TRIG_TIMER) {
		/*  set up pacing */
		FUNC9(dev, cmd);
		/*  load counter b0 in mode 3 */
		ret = FUNC14(dev, dev->iobase + COUNTER_B_BASE_REG,
					 0, devpriv->divisor_b0, 3);
		if (ret < 0) {
			FUNC6(dev, "error loading counter b0");
			return -1;
		}
	}
	/*  set up conversion pacing */
	if (FUNC10(cmd)) {
		/*  load counter a0 in mode 2 */
		ret = FUNC14(dev, dev->iobase + COUNTER_A_BASE_REG,
					 0, devpriv->divisor_a0, 2);
		if (ret < 0) {
			FUNC6(dev, "error loading counter a0");
			return -1;
		}
	} else
		devpriv->write_byte(INIT_A0_BITS,
				    dev->iobase + COUNTER_A_CONTROL_REG);

	/*  set up scan pacing */
	if (FUNC12(cmd)) {
		/*  load counter b1 in mode 2 */
		ret = FUNC14(dev, dev->iobase + COUNTER_B_BASE_REG,
					 1, devpriv->divisor_b1, 2);
		if (ret < 0) {
			FUNC6(dev, "error loading counter b1");
			return -1;
		}
	}

	FUNC13(dev);

	/*  set up dma transfer */
	if (xfer == isa_dma_transfer) {
		irq_flags = FUNC4();
		FUNC7(devpriv->dma_chan);
		/* clear flip-flop to make sure 2-byte registers for
		 * count and address get set correctly */
		FUNC5(devpriv->dma_chan);
		FUNC18(devpriv->dma_chan,
			     FUNC35(devpriv->dma_buffer));
		/*  set appropriate size of transfer */
		devpriv->dma_transfer_size = FUNC15(*cmd);
		if (cmd->stop_src == TRIG_COUNT &&
		    devpriv->count * sample_size < devpriv->dma_transfer_size) {
			devpriv->dma_transfer_size =
			    devpriv->count * sample_size;
		}
		FUNC19(devpriv->dma_chan, devpriv->dma_transfer_size);
		FUNC8(devpriv->dma_chan);
		FUNC17(irq_flags);
		/*  enable board's dma */
		devpriv->command3_bits |= DMA_EN_BIT | DMATC_INTR_EN_BIT;
	} else
		devpriv->command3_bits &= ~DMA_EN_BIT & ~DMATC_INTR_EN_BIT;

	/*  enable error interrupts */
	devpriv->command3_bits |= ERR_INTR_EN_BIT;
	/*  enable fifo not empty interrupt? */
	if (xfer == fifo_not_empty_transfer)
		devpriv->command3_bits |= ADC_FNE_INTR_EN_BIT;
	else
		devpriv->command3_bits &= ~ADC_FNE_INTR_EN_BIT;
	devpriv->write_byte(devpriv->command3_bits, dev->iobase + COMMAND3_REG);

	/*  startup aquisition */

	/*  command2 reg */
	/*  use 2 cascaded counters for pacing */
	FUNC20(&dev->spinlock, flags);
	devpriv->command2_bits |= CASCADE_BIT;
	switch (cmd->start_src) {
	case TRIG_EXT:
		devpriv->command2_bits |= HWTRIG_BIT;
		devpriv->command2_bits &= ~PRETRIG_BIT & ~SWTRIG_BIT;
		break;
	case TRIG_NOW:
		devpriv->command2_bits |= SWTRIG_BIT;
		devpriv->command2_bits &= ~PRETRIG_BIT & ~HWTRIG_BIT;
		break;
	default:
		FUNC6(dev, "bug with start_src");
		return -1;
		break;
	}
	switch (cmd->stop_src) {
	case TRIG_EXT:
		devpriv->command2_bits |= HWTRIG_BIT | PRETRIG_BIT;
		break;
	case TRIG_COUNT:
	case TRIG_NONE:
		break;
	default:
		FUNC6(dev, "bug with stop_src");
		return -1;
	}
	devpriv->write_byte(devpriv->command2_bits, dev->iobase + COMMAND2_REG);
	FUNC21(&dev->spinlock, flags);

	return 0;
}