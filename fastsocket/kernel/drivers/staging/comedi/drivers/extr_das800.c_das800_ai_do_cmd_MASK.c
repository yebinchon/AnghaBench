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
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int chanlist_len; int stop_src; int stop_arg; scalar_t__ start_src; int convert_src; int flags; int /*<<< orphan*/  convert_arg; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {scalar_t__ events; TYPE_1__ cmd; } ;
struct TYPE_6__ {int count; int forever; int /*<<< orphan*/  divisor2; int /*<<< orphan*/  divisor1; } ;
struct TYPE_5__ {int resolution; } ;

/* Variables and functions */
 int CASC ; 
 int CONV_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAS800_CONV_CONTROL ; 
 scalar_t__ DAS800_GAIN ; 
 scalar_t__ DAS800_SCAN_LIMITS ; 
 int DTEN ; 
 int EACS ; 
 int IEOC ; 
 int ITE ; 
 int SCAN_LIMITS ; 
 int /*<<< orphan*/  TIMER_BASE ; 
#define  TRIG_COUNT 131 
#define  TRIG_EXT 130 
#define  TRIG_NONE 129 
 int TRIG_ROUND_MASK ; 
#define  TRIG_TIMER 128 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 TYPE_3__* devpriv ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__* thisboard ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	int startChan, endChan, scan, gain;
	int conv_bits;
	unsigned long irq_flags;
	struct comedi_async *async = s->async;

	if (!dev->irq) {
		FUNC2(dev,
			     "no irq assigned for das-800, cannot do hardware conversions");
		return -1;
	}

	FUNC4(dev);

	/* set channel scan limits */
	startChan = FUNC0(async->cmd.chanlist[0]);
	endChan = (startChan + async->cmd.chanlist_len - 1) % 8;
	scan = (endChan << 3) | startChan;

	FUNC8(&dev->spinlock, irq_flags);
	FUNC7(SCAN_LIMITS, dev->iobase + DAS800_GAIN);	/* select base address + 2 to be scan limits register */
	FUNC7(scan, dev->iobase + DAS800_SCAN_LIMITS);	/* set scan limits */
	FUNC9(&dev->spinlock, irq_flags);

	/* set gain */
	gain = FUNC1(async->cmd.chanlist[0]);
	if (thisboard->resolution == 12 && gain > 0)
		gain += 0x7;
	gain &= 0xf;
	FUNC7(gain, dev->iobase + DAS800_GAIN);

	switch (async->cmd.stop_src) {
	case TRIG_COUNT:
		devpriv->count = async->cmd.stop_arg * async->cmd.chanlist_len;
		devpriv->forever = 0;
		break;
	case TRIG_NONE:
		devpriv->forever = 1;
		devpriv->count = 0;
		break;
	default:
		break;
	}

	/* enable auto channel scan, send interrupts on end of conversion
	 * and set clock source to internal or external
	 */
	conv_bits = 0;
	conv_bits |= EACS | IEOC;
	if (async->cmd.start_src == TRIG_EXT)
		conv_bits |= DTEN;
	switch (async->cmd.convert_src) {
	case TRIG_TIMER:
		conv_bits |= CASC | ITE;
		/* set conversion frequency */
		FUNC6(TIMER_BASE, &(devpriv->divisor1),
					       &(devpriv->divisor2),
					       &(async->cmd.convert_arg),
					       async->cmd.
					       flags & TRIG_ROUND_MASK);
		if (FUNC3(dev) < 0) {
			FUNC2(dev, "Error setting up counters");
			return -1;
		}
		break;
	case TRIG_EXT:
		break;
	default:
		break;
	}

	FUNC8(&dev->spinlock, irq_flags);
	FUNC7(CONV_CONTROL, dev->iobase + DAS800_GAIN);	/* select dev->iobase + 2 to be conversion control register */
	FUNC7(conv_bits, dev->iobase + DAS800_CONV_CONTROL);
	FUNC9(&dev->spinlock, irq_flags);
	async->events = 0;
	FUNC5(dev);
	return 0;
}