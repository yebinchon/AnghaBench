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
struct comedi_cmd {scalar_t__ scan_begin_src; } ;
struct TYPE_4__ {int hwver; unsigned char int_en; scalar_t__ intr_cpuid; unsigned char ier; int daccon; int /*<<< orphan*/  isr_spinlock; scalar_t__ iobase1; scalar_t__ intr_running; int /*<<< orphan*/  ao_stop_spinlock; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AO_CMD_STARTED ; 
 int /*<<< orphan*/  OWNER_AOCMD ; 
 int PCI230P2_DAC_FIFO_RESET ; 
 int PCI230P2_DAC_FIFO_UNDERRUN_CLEAR ; 
 unsigned char PCI230P2_INT_DAC ; 
 scalar_t__ PCI230_DACCON ; 
 int PCI230_DAC_OR_MASK ; 
 scalar_t__ PCI230_INT_SCE ; 
 unsigned char PCI230_INT_ZCLK_CT1 ; 
 scalar_t__ THISCPU ; 
 scalar_t__ TRIG_TIMER ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	unsigned long irqflags;
	unsigned char intsrc;
	int started;
	struct comedi_cmd *cmd;

	FUNC4(&devpriv->ao_stop_spinlock, irqflags);
	started = FUNC6(AO_CMD_STARTED, &devpriv->state);
	FUNC5(&devpriv->ao_stop_spinlock, irqflags);
	if (!started) {
		return;
	}

	cmd = &s->async->cmd;
	if (cmd->scan_begin_src == TRIG_TIMER) {
		/* Stop scan rate generator. */
		FUNC2(dev, 1);
	}

	/* Determine interrupt source. */
	if (devpriv->hwver < 2) {
		/* Not using DAC FIFO.  Using CT1 interrupt. */
		intsrc = PCI230_INT_ZCLK_CT1;
	} else {
		/* Using DAC FIFO interrupt. */
		intsrc = PCI230P2_INT_DAC;
	}
	/* Disable interrupt and wait for interrupt routine to finish running
	 * unless we are called from the interrupt routine. */
	FUNC4(&devpriv->isr_spinlock, irqflags);
	devpriv->int_en &= ~intsrc;
	while (devpriv->intr_running && devpriv->intr_cpuid != THISCPU) {
		FUNC5(&devpriv->isr_spinlock, irqflags);
		FUNC4(&devpriv->isr_spinlock, irqflags);
	}
	if (devpriv->ier != devpriv->int_en) {
		devpriv->ier = devpriv->int_en;
		FUNC0(devpriv->ier, devpriv->iobase1 + PCI230_INT_SCE);
	}
	FUNC5(&devpriv->isr_spinlock, irqflags);

	if (devpriv->hwver >= 2) {
		/* Using DAC FIFO.  Reset FIFO, clear underrun error,
		 * disable FIFO. */
		devpriv->daccon &= PCI230_DAC_OR_MASK;
		FUNC1(devpriv->daccon | PCI230P2_DAC_FIFO_RESET
		     | PCI230P2_DAC_FIFO_UNDERRUN_CLEAR,
		     dev->iobase + PCI230_DACCON);
	}

	/* Release resources. */
	FUNC3(dev, OWNER_AOCMD);
}