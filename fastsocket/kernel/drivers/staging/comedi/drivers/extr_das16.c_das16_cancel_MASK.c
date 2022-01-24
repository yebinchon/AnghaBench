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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;
struct TYPE_4__ {int control_state; int /*<<< orphan*/  timer; scalar_t__ timer_running; scalar_t__ timer_mode; scalar_t__ dma_chan; } ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 scalar_t__ DAS1600_BURST ; 
 scalar_t__ DAS16_CONTROL ; 
 int DAS16_INTE ; 
 int DMA_ENABLE ; 
 int PACING_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s)
{
	unsigned long flags;

	FUNC3(&dev->spinlock, flags);
	/* disable interrupts, dma and pacer clocked conversions */
	devpriv->control_state &= ~DAS16_INTE & ~PACING_MASK & ~DMA_ENABLE;
	FUNC2(devpriv->control_state, dev->iobase + DAS16_CONTROL);
	if (devpriv->dma_chan)
		FUNC1(devpriv->dma_chan);

	/*  disable SW timer */
	if (devpriv->timer_mode && devpriv->timer_running) {
		devpriv->timer_running = 0;
		FUNC0(&devpriv->timer);
	}

	/* disable burst mode */
	if (thisboard->size > 0x400) {
		FUNC2(0, dev->iobase + DAS1600_BURST);
	}

	FUNC4(&dev->spinlock, flags);

	return 0;
}