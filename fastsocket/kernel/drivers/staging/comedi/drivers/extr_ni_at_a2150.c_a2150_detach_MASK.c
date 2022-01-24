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
struct comedi_device {scalar_t__ irq; scalar_t__ iobase; int /*<<< orphan*/  minor; } ;
struct TYPE_4__ {scalar_t__ dma_buffer; scalar_t__ dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  driver_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  A2150_SIZE ; 
 int APD_BIT ; 
 scalar_t__ CONFIG_REG ; 
 int DPD_BIT ; 
 TYPE_2__* devpriv ; 
 TYPE_1__ driver_a2150 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
	FUNC4("comedi%d: %s: remove\n", dev->minor, driver_a2150.driver_name);

	/* only free stuff if it has been allocated by _attach */
	if (dev->iobase) {
		/*  put board in power-down mode */
		FUNC3(APD_BIT | DPD_BIT, dev->iobase + CONFIG_REG);
		FUNC5(dev->iobase, A2150_SIZE);
	}

	if (dev->irq)
		FUNC1(dev->irq, dev);
	if (devpriv) {
		if (devpriv->dma)
			FUNC0(devpriv->dma);
		if (devpriv->dma_buffer)
			FUNC2(devpriv->dma_buffer);
	}

	return 0;
}