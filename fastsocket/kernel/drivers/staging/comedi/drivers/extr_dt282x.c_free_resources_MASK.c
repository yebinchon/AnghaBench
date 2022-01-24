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
struct comedi_device {scalar_t__ private; scalar_t__ iobase; scalar_t__ irq; } ;
struct TYPE_4__ {TYPE_1__* dma; } ;
struct TYPE_3__ {scalar_t__ buf; scalar_t__ chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT2821_SIZE ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	if (dev->irq) {
		FUNC1(dev->irq, dev);
	}
	if (dev->iobase)
		FUNC3(dev->iobase, DT2821_SIZE);
	if (dev->private) {
		if (devpriv->dma[0].chan)
			FUNC0(devpriv->dma[0].chan);
		if (devpriv->dma[1].chan)
			FUNC0(devpriv->dma[1].chan);
		if (devpriv->dma[0].buf)
			FUNC2((unsigned long)devpriv->dma[0].buf);
		if (devpriv->dma[1].buf)
			FUNC2((unsigned long)devpriv->dma[1].buf);
	}
}