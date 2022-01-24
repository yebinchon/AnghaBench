#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct comedi_cmd {scalar_t__ convert_src; int chanlist_len; int* chanlist; int flags; scalar_t__ start_src; int start_arg; scalar_t__ stop_src; int stop_arg; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_7__ {scalar_t__ layout; } ;
struct TYPE_6__ {int adc_control1_bits; int ai_dma_desc_bus_addr; int ai_cmd_running; scalar_t__ main_iobase; TYPE_1__* ai_dma_desc; scalar_t__ ai_dma_index; } ;
struct TYPE_5__ {int /*<<< orphan*/  transfer_size; } ;

/* Variables and functions */
 scalar_t__ ADC_BUFFER_CLEAR_REG ; 
 scalar_t__ ADC_CONTROL0_REG ; 
 scalar_t__ ADC_CONTROL1_REG ; 
 int ADC_DITHER_BIT ; 
 int ADC_DMA_DISABLE_BIT ; 
 int ADC_ENABLE_BIT ; 
 int ADC_GATE_LEVEL_BIT ; 
 int ADC_HI_CHANNEL_4020_MASK ; 
 int ADC_LO_CHANNEL_4020_MASK ; 
 int ADC_MODE_MASK ; 
 int ADC_SAMPLE_COUNTER_EN_BIT ; 
 int ADC_SOFT_GATE_BITS ; 
 scalar_t__ ADC_START_REG ; 
 int ADC_START_TRIG_EXT_BITS ; 
 int ADC_START_TRIG_FALLING_BIT ; 
 int ADC_START_TRIG_SOFT_BITS ; 
 int ADC_SW_GATE_BIT ; 
 scalar_t__ CALIBRATION_REG ; 
 int CHANNEL_MODE_4020_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 int CR_INVERT ; 
 scalar_t__ DAQ_ATRIG_LOW_4020_REG ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EXT_START_TRIG_BNC_BIT ; 
 int EXT_STOP_TRIG_BNC_BIT ; 
 int FOUR_CHANNEL_4020_BITS ; 
 scalar_t__ LAYOUT_4020 ; 
 int PLX_DESC_IN_PCI_BIT ; 
 int PLX_INTR_TERM_COUNT ; 
 int PLX_XFER_LOCAL_TO_PCI ; 
 scalar_t__ TRIG_EXT ; 
 scalar_t__ TRIG_NOW ; 
 int TRIG_WAKE_EOS ; 
 int TWO_CHANNEL_4020_BITS ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int) ; 
 unsigned int FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,int) ; 
 int FUNC11 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC13 (struct comedi_device*,int,int) ; 
 TYPE_2__* FUNC14 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct comedi_device*,struct comedi_cmd*) ; 
 int FUNC16 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC17 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC20 (struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC21 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC22(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	uint32_t bits;
	unsigned int i;
	unsigned long flags;
	int retval;

	FUNC9(dev);
	FUNC2(dev, 1);

	retval = FUNC16(dev, cmd);
	if (retval < 0)
		return retval;

	/*  make sure internal calibration source is turned off */
	FUNC21(0, FUNC14(dev)->main_iobase + CALIBRATION_REG);

	FUNC15(dev, cmd);

	FUNC17(dev, cmd);

	FUNC12(dev, cmd);

	FUNC18(&dev->spinlock, flags);
	/* set mode, allow conversions through software gate */
	FUNC14(dev)->adc_control1_bits |= ADC_SW_GATE_BIT;
	FUNC14(dev)->adc_control1_bits &= ~ADC_DITHER_BIT;
	if (FUNC7(dev)->layout != LAYOUT_4020) {
		FUNC14(dev)->adc_control1_bits &= ~ADC_MODE_MASK;
		if (cmd->convert_src == TRIG_EXT)
			FUNC14(dev)->adc_control1_bits |= FUNC5(13);	/*  good old mode 13 */
		else
			FUNC14(dev)->adc_control1_bits |= FUNC5(8);	/*  mode 8.  What else could you need? */
	} else {
		FUNC14(dev)->adc_control1_bits &= ~CHANNEL_MODE_4020_MASK;
		if (cmd->chanlist_len == 4)
			FUNC14(dev)->adc_control1_bits |= FOUR_CHANNEL_4020_BITS;
		else if (cmd->chanlist_len == 2)
			FUNC14(dev)->adc_control1_bits |= TWO_CHANNEL_4020_BITS;
		FUNC14(dev)->adc_control1_bits &= ~ADC_LO_CHANNEL_4020_MASK;
		FUNC14(dev)->adc_control1_bits |=
		    FUNC4(FUNC0(cmd->chanlist[0]));
		FUNC14(dev)->adc_control1_bits &= ~ADC_HI_CHANNEL_4020_MASK;
		FUNC14(dev)->adc_control1_bits |=
		    FUNC3(FUNC0
					  (cmd->
					   chanlist[cmd->chanlist_len - 1]));
	}
	FUNC21(FUNC14(dev)->adc_control1_bits,
	       FUNC14(dev)->main_iobase + ADC_CONTROL1_REG);
	FUNC1("control1 bits 0x%x\n", FUNC14(dev)->adc_control1_bits);
	FUNC19(&dev->spinlock, flags);

	/*  clear adc buffer */
	FUNC21(0, FUNC14(dev)->main_iobase + ADC_BUFFER_CLEAR_REG);

	if ((cmd->flags & TRIG_WAKE_EOS) == 0 ||
	    FUNC7(dev)->layout == LAYOUT_4020) {
		FUNC14(dev)->ai_dma_index = 0;

		/*  set dma transfer size */
		for (i = 0; i < FUNC6(FUNC7(dev)); i++)
			FUNC14(dev)->ai_dma_desc[i].transfer_size =
			    FUNC8(FUNC11(dev) *
					sizeof(uint16_t));

		/*  give location of first dma descriptor */
		FUNC13(dev, 1,
					  FUNC14(dev)->ai_dma_desc_bus_addr |
					  PLX_DESC_IN_PCI_BIT |
					  PLX_INTR_TERM_COUNT |
					  PLX_XFER_LOCAL_TO_PCI);

		FUNC10(dev, 1);
	}

	if (FUNC7(dev)->layout == LAYOUT_4020) {
		/* set source for external triggers */
		bits = 0;
		if (cmd->start_src == TRIG_EXT && FUNC0(cmd->start_arg))
			bits |= EXT_START_TRIG_BNC_BIT;
		if (cmd->stop_src == TRIG_EXT && FUNC0(cmd->stop_arg))
			bits |= EXT_STOP_TRIG_BNC_BIT;
		FUNC21(bits, FUNC14(dev)->main_iobase + DAQ_ATRIG_LOW_4020_REG);
	}

	FUNC18(&dev->spinlock, flags);

	/* enable pacing, triggering, etc */
	bits = ADC_ENABLE_BIT | ADC_SOFT_GATE_BITS | ADC_GATE_LEVEL_BIT;
	if (cmd->flags & TRIG_WAKE_EOS)
		bits |= ADC_DMA_DISABLE_BIT;
	/*  set start trigger */
	if (cmd->start_src == TRIG_EXT) {
		bits |= ADC_START_TRIG_EXT_BITS;
		if (cmd->start_arg & CR_INVERT)
			bits |= ADC_START_TRIG_FALLING_BIT;
	} else if (cmd->start_src == TRIG_NOW)
		bits |= ADC_START_TRIG_SOFT_BITS;
	if (FUNC20(cmd))
		bits |= ADC_SAMPLE_COUNTER_EN_BIT;
	FUNC21(bits, FUNC14(dev)->main_iobase + ADC_CONTROL0_REG);
	FUNC1("control0 bits 0x%x\n", bits);

	FUNC14(dev)->ai_cmd_running = 1;

	FUNC19(&dev->spinlock, flags);

	/*  start aquisition */
	if (cmd->start_src == TRIG_NOW) {
		FUNC21(0, FUNC14(dev)->main_iobase + ADC_START_REG);
		FUNC1("soft trig\n");
	}

	return 0;
}