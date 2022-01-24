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
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  irq; struct comedi_subdevice* subdevices; int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int adbits; } ;
struct TYPE_5__ {int /*<<< orphan*/  events; } ;
struct TYPE_4__ {scalar_t__ dma_dir; scalar_t__ nread; scalar_t__ ad_2scomp; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  COMEDI_CB_OVERFLOW ; 
 scalar_t__ DMA_MODE_READ ; 
 scalar_t__ DT2821_ADCSR ; 
 scalar_t__ DT2821_ADDAT ; 
 unsigned int DT2821_ADDONE ; 
 unsigned int DT2821_ADERR ; 
 scalar_t__ DT2821_DACSR ; 
 unsigned int DT2821_DAERR ; 
 unsigned int DT2821_DMAD ; 
 unsigned int DT2821_SCDN ; 
 int /*<<< orphan*/  DT2821_STRIG ; 
 scalar_t__ DT2821_SUPCSR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ boardtype ; 
 int FUNC1 (TYPE_2__*,short) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*) ; 
 unsigned int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s;
	struct comedi_subdevice *s_ao;
	unsigned int supcsr, adcsr, dacsr;
	int handled = 0;

	if (!dev->attached) {
		FUNC2(dev, "spurious interrupt");
		return IRQ_HANDLED;
	}

	s = dev->subdevices + 0;
	s_ao = dev->subdevices + 1;
	adcsr = FUNC9(dev->iobase + DT2821_ADCSR);
	dacsr = FUNC9(dev->iobase + DT2821_DACSR);
	supcsr = FUNC9(dev->iobase + DT2821_SUPCSR);
	if (supcsr & DT2821_DMAD) {
		if (devpriv->dma_dir == DMA_MODE_READ)
			FUNC6(dev);
		else
			FUNC8(dev);
		handled = 1;
	}
	if (adcsr & DT2821_ADERR) {
		if (devpriv->nread != 0) {
			FUNC2(dev, "A/D error");
			FUNC5(dev, s);
			s->async->events |= COMEDI_CB_ERROR;
		}
		handled = 1;
	}
	if (dacsr & DT2821_DAERR) {
#if 0
		static int warn = 5;
		if (--warn <= 0) {
			disable_irq(dev->irq);
			printk("disabling irq\n");
		}
#endif
		FUNC2(dev, "D/A error");
		FUNC7(dev, s_ao);
		s->async->events |= COMEDI_CB_ERROR;
		handled = 1;
	}
#if 0
	if (adcsr & DT2821_ADDONE) {
		int ret;
		short data;

		data = (short)inw(dev->iobase + DT2821_ADDAT);
		data &= (1 << boardtype.adbits) - 1;
		if (devpriv->ad_2scomp) {
			data ^= 1 << (boardtype.adbits - 1);
		}
		ret = comedi_buf_put(s->async, data);
		if (ret == 0) {
			s->async->events |= COMEDI_CB_OVERFLOW;
		}

		devpriv->nread--;
		if (!devpriv->nread) {
			s->async->events |= COMEDI_CB_EOA;
		} else {
			if (supcsr & DT2821_SCDN)
				update_supcsr(DT2821_STRIG);
		}
		handled = 1;
	}
#endif
	FUNC3(dev, s);
	/* printk("adcsr=0x%02x dacsr-0x%02x supcsr=0x%02x\n", adcsr, dacsr, supcsr); */
	return FUNC0(handled);
}