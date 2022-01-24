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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ ai_eos; int /*<<< orphan*/  ai_et_div2; int /*<<< orphan*/  ai_et_div1; int /*<<< orphan*/  CntrlReg; int /*<<< orphan*/  ai_et_MuxVal; int /*<<< orphan*/  ai_et_CntrlReg; scalar_t__ ai_et; } ;

/* Variables and functions */
 int /*<<< orphan*/  Control_CNT0 ; 
 int /*<<< orphan*/  Control_SW ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ PCI171x_CLRFIFO ; 
 scalar_t__ PCI171x_CLRINT ; 
 scalar_t__ PCI171x_CONTROL ; 
 scalar_t__ PCI171x_MUX ; 
 scalar_t__ PCI171x_STATUS ; 
 int Status_IRQ ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *d)
{
	struct comedi_device *dev = d;

	FUNC0("adv_pci1710 EDBG: BGN: interrupt_service_pci1710(%d,...)\n",
		irq);
	if (!dev->attached)	/*  is device attached? */
		return IRQ_NONE;	/*  no, exit */

	if (!(FUNC3(dev->iobase + PCI171x_STATUS) & Status_IRQ))	/*  is this interrupt from our board? */
		return IRQ_NONE;	/*  no, exit */

	FUNC0("adv_pci1710 EDBG: interrupt_service_pci1710() ST: %4x\n",
		FUNC3(dev->iobase + PCI171x_STATUS));

	if (devpriv->ai_et) {	/*  Switch from initial TRIG_EXT to TRIG_xxx. */
		devpriv->ai_et = 0;
		devpriv->CntrlReg &= Control_CNT0;
		devpriv->CntrlReg |= Control_SW;	/*  set software trigger */
		FUNC5(devpriv->CntrlReg, dev->iobase + PCI171x_CONTROL);
		devpriv->CntrlReg = devpriv->ai_et_CntrlReg;
		FUNC4(0, dev->iobase + PCI171x_CLRFIFO);
		FUNC4(0, dev->iobase + PCI171x_CLRINT);
		FUNC5(devpriv->ai_et_MuxVal, dev->iobase + PCI171x_MUX);
		FUNC5(devpriv->CntrlReg, dev->iobase + PCI171x_CONTROL);
		/*  start pacer */
		FUNC6(dev, 1, devpriv->ai_et_div1, devpriv->ai_et_div2);
		return IRQ_HANDLED;
	}
	if (devpriv->ai_eos) {	/*  We use FIFO half full INT or not? */
		FUNC1(d);
	} else {
		FUNC2(d);
	}
	FUNC0("adv_pci1710 EDBG: END: interrupt_service_pci1710(...)\n");
	return IRQ_HANDLED;
}