#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct comedi_cmd {unsigned int chanlist_len; int scan_begin_src; scalar_t__ stop_src; int stop_arg; int /*<<< orphan*/  flags; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/ * chanlist; } ;
struct comedi_async {int /*<<< orphan*/  inttrig; struct comedi_cmd cmd; } ;
struct TYPE_2__ {int ao_count; int /*<<< orphan*/  ao_control_bits; int /*<<< orphan*/  ao_divisor2; scalar_t__ pacer_counter_dio; int /*<<< orphan*/  ao_divisor1; scalar_t__ ao_registers; scalar_t__ control_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAC8254 ; 
 scalar_t__ DACFIFOCLR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAC_CSR ; 
 int /*<<< orphan*/  DAC_PACER_EXT_RISE ; 
 int /*<<< orphan*/  DAC_PACER_INT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_BASE ; 
 scalar_t__ TRIG_COUNT ; 
#define  TRIG_EXT 129 
#define  TRIG_TIMER 128 
 int /*<<< orphan*/  cb_pcidas_ao_inttrig ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int i;
	unsigned long flags;

	/*  set channel limits, gain */
	FUNC8(&dev->spinlock, flags);
	for (i = 0; i < cmd->chanlist_len; i++) {
		/*  enable channel */
		devpriv->ao_control_bits |=
		    FUNC2(FUNC0(cmd->chanlist[i]));
		/*  set range */
		devpriv->ao_control_bits |= FUNC3(FUNC0(cmd->chanlist[i]),
						      FUNC1(cmd->
							       chanlist[i]));
	}

	/*  disable analog out before settings pacer source and count values */
	FUNC7(devpriv->ao_control_bits, devpriv->control_status + DAC_CSR);
	FUNC9(&dev->spinlock, flags);

	/*  clear fifo */
	FUNC7(0, devpriv->ao_registers + DACFIFOCLR);

	/*  load counters */
	if (cmd->scan_begin_src == TRIG_TIMER) {
		FUNC5(TIMER_BASE,
					       &(devpriv->ao_divisor1),
					       &(devpriv->ao_divisor2),
					       &(cmd->scan_begin_arg),
					       cmd->flags);

		/* Write the values of ctr1 and ctr2 into counters 1 and 2 */
		FUNC6(devpriv->pacer_counter_dio + DAC8254, 0, 1,
			   devpriv->ao_divisor1, 2);
		FUNC6(devpriv->pacer_counter_dio + DAC8254, 0, 2,
			   devpriv->ao_divisor2, 2);
	}
	/*  set number of conversions */
	if (cmd->stop_src == TRIG_COUNT) {
		devpriv->ao_count = cmd->chanlist_len * cmd->stop_arg;
	}
	/*  set pacer source */
	FUNC8(&dev->spinlock, flags);
	switch (cmd->scan_begin_src) {
	case TRIG_TIMER:
		devpriv->ao_control_bits |= DAC_PACER_INT;
		break;
	case TRIG_EXT:
		devpriv->ao_control_bits |= DAC_PACER_EXT_RISE;
		break;
	default:
		FUNC9(&dev->spinlock, flags);
		FUNC4(dev, "error setting dac pacer source");
		return -1;
		break;
	}
	FUNC9(&dev->spinlock, flags);

	async->inttrig = cb_pcidas_ao_inttrig;

	return 0;
}