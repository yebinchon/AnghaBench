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
typedef  int /*<<< orphan*/  u16 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  intCount; scalar_t__ aiCount; } ;

/* Variables and functions */
 int DMA0_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ICS_DMA0_E ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__* devpriv ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev, struct comedi_subdevice *s)
{
	u16 status;

	FUNC6(dev, 0);	/* stop on SOFTWARE stop */
	FUNC5(dev);	/* Stop PACER */
	FUNC1(dev, 0);	/* software trigger only */
	FUNC2(dev, 0);
	devpriv->aiCount = 0;	/* stop and don't transfer any more */
#ifdef USE_DMA
	if (devpriv->flags & DMA0_ACTIVE) {
		RtdPlxInterruptWrite(dev,	/* disable any more interrupts */
				     RtdPlxInterruptRead(dev) & ~ICS_DMA0_E);
		abort_dma(dev, 0);
		devpriv->flags &= ~DMA0_ACTIVE;
	}
#endif /* USE_DMA */
	status = FUNC4(dev);
	FUNC0
	    ("rtd520: Acquisition canceled. %ld ints, intStat=%x, overStat=%x\n",
	     devpriv->intCount, status,
	     0xffff & FUNC3(dev));
	return 0;
}