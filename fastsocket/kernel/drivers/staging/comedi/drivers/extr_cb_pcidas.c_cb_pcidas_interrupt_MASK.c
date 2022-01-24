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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ attached; int /*<<< orphan*/  spinlock; struct comedi_subdevice* read_subdev; } ;
struct TYPE_4__ {scalar_t__ stop_src; } ;
struct comedi_async {int events; TYPE_1__ cmd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int s5933_intcsr_bits; unsigned int count; int adc_fifo_bits; scalar_t__ control_status; scalar_t__ adc_fifo; int /*<<< orphan*/  ai_buffer; scalar_t__ s5933_config; } ;
struct TYPE_5__ {int fifo_size; } ;

/* Variables and functions */
 scalar_t__ ADCDATA ; 
 int ADHFI ; 
 int ADNE ; 
 int ADNEI ; 
 scalar_t__ AMCC_OP_REG_IMB4 ; 
 scalar_t__ AMCC_OP_REG_INTCSR ; 
 scalar_t__ AMCC_OP_REG_MBEF ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int DAEMI ; 
 int DAHFI ; 
 int EOAI ; 
 int EOBI ; 
 int INT ; 
 int INTCSR_INBOX_INTR_STATUS ; 
 int INTCSR_INTR_ASSERTED ; 
 scalar_t__ INT_ADCFIFO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int LADFUL ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_subdevice*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_3__* devpriv ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__* thisboard ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *d)
{
	struct comedi_device *dev = (struct comedi_device *)d;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async;
	int status, s5933_status;
	int half_fifo = thisboard->fifo_size / 2;
	unsigned int num_samples, i;
	static const int timeout = 10000;
	unsigned long flags;

	if (dev->attached == 0) {
		return IRQ_NONE;
	}

	async = s->async;
	async->events = 0;

	s5933_status = FUNC6(devpriv->s5933_config + AMCC_OP_REG_INTCSR);
#ifdef CB_PCIDAS_DEBUG
	printk("intcsr 0x%x\n", s5933_status);
	printk("mbef 0x%x\n", inl(devpriv->s5933_config + AMCC_OP_REG_MBEF));
#endif

	if ((INTCSR_INTR_ASSERTED & s5933_status) == 0)
		return IRQ_NONE;

	/*  make sure mailbox 4 is empty */
	FUNC7(devpriv->s5933_config + AMCC_OP_REG_IMB4);
	/*  clear interrupt on amcc s5933 */
	FUNC10(devpriv->s5933_intcsr_bits | INTCSR_INBOX_INTR_STATUS,
	     devpriv->s5933_config + AMCC_OP_REG_INTCSR);

	status = FUNC9(devpriv->control_status + INT_ADCFIFO);
#ifdef CB_PCIDAS_DEBUG
	if ((status & (INT | EOAI | LADFUL | DAHFI | DAEMI)) == 0) {
		comedi_error(dev, "spurious interrupt");
	}
#endif

	/*  check for analog output interrupt */
	if (status & (DAHFI | DAEMI)) {
		FUNC5(dev, status);
	}
	/*  check for analog input interrupts */
	/*  if fifo half-full */
	if (status & ADHFI) {
		/*  read data */
		num_samples = half_fifo;
		if (async->cmd.stop_src == TRIG_COUNT &&
		    num_samples > devpriv->count) {
			num_samples = devpriv->count;
		}
		FUNC8(devpriv->adc_fifo + ADCDATA, devpriv->ai_buffer,
		     num_samples);
		FUNC1(s, devpriv->ai_buffer,
					  num_samples * sizeof(short));
		devpriv->count -= num_samples;
		if (async->cmd.stop_src == TRIG_COUNT && devpriv->count == 0) {
			async->events |= COMEDI_CB_EOA;
			FUNC0(dev, s);
		}
		/*  clear half-full interrupt latch */
		FUNC13(&dev->spinlock, flags);
		FUNC11(devpriv->adc_fifo_bits | INT,
		     devpriv->control_status + INT_ADCFIFO);
		FUNC14(&dev->spinlock, flags);
		/*  else if fifo not empty */
	} else if (status & (ADNEI | EOBI)) {
		for (i = 0; i < timeout; i++) {
			/*  break if fifo is empty */
			if ((ADNE & FUNC9(devpriv->control_status +
					INT_ADCFIFO)) == 0)
				break;
			FUNC2(s, FUNC9(devpriv->adc_fifo));
			if (async->cmd.stop_src == TRIG_COUNT && --devpriv->count == 0) {	/* end of acquisition */
				FUNC0(dev, s);
				async->events |= COMEDI_CB_EOA;
				break;
			}
		}
		/*  clear not-empty interrupt latch */
		FUNC13(&dev->spinlock, flags);
		FUNC11(devpriv->adc_fifo_bits | INT,
		     devpriv->control_status + INT_ADCFIFO);
		FUNC14(&dev->spinlock, flags);
	} else if (status & EOAI) {
		FUNC3(dev,
			     "bug! encountered end of aquisition interrupt?");
		/*  clear EOA interrupt latch */
		FUNC13(&dev->spinlock, flags);
		FUNC11(devpriv->adc_fifo_bits | EOAI,
		     devpriv->control_status + INT_ADCFIFO);
		FUNC14(&dev->spinlock, flags);
	}
	/* check for fifo overflow */
	if (status & LADFUL) {
		FUNC3(dev, "fifo overflow");
		/*  clear overflow interrupt latch */
		FUNC13(&dev->spinlock, flags);
		FUNC11(devpriv->adc_fifo_bits | LADFUL,
		     devpriv->control_status + INT_ADCFIFO);
		FUNC14(&dev->spinlock, flags);
		FUNC0(dev, s);
		async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
	}

	FUNC4(dev, s);

	return IRQ_HANDLED;
}