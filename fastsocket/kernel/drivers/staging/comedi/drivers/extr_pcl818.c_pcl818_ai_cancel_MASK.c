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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ irq_blocked; int irq_was_now_closed; int ai_mode; int /*<<< orphan*/  neverending_ai; struct comedi_subdevice* last_int_sub; int /*<<< orphan*/  usefifo; int /*<<< orphan*/  dma; int /*<<< orphan*/  ai_act_scan; int /*<<< orphan*/  rtc_irq_timer; } ;

/* Variables and functions */
#define  INT_TYPE_AI1_DMA 137 
#define  INT_TYPE_AI1_DMA_RTC 136 
#define  INT_TYPE_AI1_FIFO 135 
#define  INT_TYPE_AI1_INT 134 
#define  INT_TYPE_AI3_DMA 133 
#define  INT_TYPE_AI3_DMA_RTC 132 
#define  INT_TYPE_AI3_FIFO 131 
#define  INT_TYPE_AI3_INT 130 
#define  INT_TYPE_AO1_INT 129 
#define  INT_TYPE_AO3_INT 128 
 scalar_t__ PCL818_AD_HI ; 
 scalar_t__ PCL818_AD_LO ; 
 scalar_t__ PCL818_CLRINT ; 
 scalar_t__ PCL818_CONTROL ; 
 scalar_t__ PCL818_FI_ENABLE ; 
 scalar_t__ PCL818_FI_FLUSH ; 
 scalar_t__ PCL818_FI_INTCLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	if (devpriv->irq_blocked > 0) {
		FUNC4("pcl818_ai_cancel()\n");
		devpriv->irq_was_now_closed = 1;

		switch (devpriv->ai_mode) {
#ifdef unused
		case INT_TYPE_AI1_DMA_RTC:
		case INT_TYPE_AI3_DMA_RTC:
			set_rtc_irq_bit(0);	/*  stop RTC */
			del_timer(&devpriv->rtc_irq_timer);
#endif
		case INT_TYPE_AI1_DMA:
		case INT_TYPE_AI3_DMA:
			if (devpriv->neverending_ai ||
			    (!devpriv->neverending_ai &&
			     devpriv->ai_act_scan > 0)) {
				/* wait for running dma transfer to end, do cleanup in interrupt */
				goto end;
			}
			FUNC1(devpriv->dma);
		case INT_TYPE_AI1_INT:
		case INT_TYPE_AI3_INT:
		case INT_TYPE_AI1_FIFO:
		case INT_TYPE_AI3_FIFO:
#ifdef PCL818_MODE13_AO
		case INT_TYPE_AO1_INT:
		case INT_TYPE_AO3_INT:
#endif
			FUNC3(FUNC2(dev->iobase + PCL818_CONTROL) & 0x73, dev->iobase + PCL818_CONTROL);	/* Stop A/D */
			FUNC7(1);
			FUNC6(dev, -1, 0, 0);
			FUNC3(0, dev->iobase + PCL818_AD_LO);
			FUNC2(dev->iobase + PCL818_AD_LO);
			FUNC2(dev->iobase + PCL818_AD_HI);
			FUNC3(0, dev->iobase + PCL818_CLRINT);	/* clear INT request */
			FUNC3(0, dev->iobase + PCL818_CONTROL);	/* Stop A/D */
			if (devpriv->usefifo) {	/*  FIFO shutdown */
				FUNC3(0, dev->iobase + PCL818_FI_INTCLR);
				FUNC3(0, dev->iobase + PCL818_FI_FLUSH);
				FUNC3(0, dev->iobase + PCL818_FI_ENABLE);
			}
			devpriv->irq_blocked = 0;
			devpriv->last_int_sub = s;
			devpriv->neverending_ai = 0;
			devpriv->ai_mode = 0;
			devpriv->irq_was_now_closed = 0;
			break;
		}
	}

end:
	FUNC4("pcl818_ai_cancel() end\n");
	return 0;
}