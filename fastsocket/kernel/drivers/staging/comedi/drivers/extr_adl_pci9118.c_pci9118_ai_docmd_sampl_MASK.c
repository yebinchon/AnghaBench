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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {int ai_do; int ai12_startstop; int IntControlReg; int AdFunctionReg; int /*<<< orphan*/  AdControlReg; int /*<<< orphan*/  ai_divisor2; int /*<<< orphan*/  ai_divisor1; scalar_t__ iobase_a; int /*<<< orphan*/  int_ai_func; } ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_INTCSR ; 
 int /*<<< orphan*/  AdControl_ExtM ; 
 int /*<<< orphan*/  AdControl_Int ; 
 int /*<<< orphan*/  AdControl_SoftG ; 
 int /*<<< orphan*/  AdControl_TmrTr ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EIO ; 
 int /*<<< orphan*/  EXTTRG_AI ; 
 int Int_Timer ; 
 scalar_t__ PCI9118_ADFUNC ; 
 scalar_t__ PCI9118_INTCTRL ; 
 int START_AI_EXT ; 
 int START_AI_INT ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  interrupt_pci9118_ai_onesample ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				  struct comedi_subdevice *s)
{
	FUNC0("adl_pci9118 EDBG: BGN: pci9118_ai_docmd_sampl(%d,) [%d]\n",
		dev->minor, devpriv->ai_do);
	switch (devpriv->ai_do) {
	case 1:
		devpriv->AdControlReg |= AdControl_TmrTr;
		break;
	case 2:
		FUNC1(dev, "pci9118_ai_docmd_sampl() mode 2 bug!\n");
		return -EIO;
	case 3:
		devpriv->AdControlReg |= AdControl_ExtM;
		break;
	case 4:
		FUNC1(dev, "pci9118_ai_docmd_sampl() mode 4 bug!\n");
		return -EIO;
	default:
		FUNC1(dev,
			     "pci9118_ai_docmd_sampl() mode number bug!\n");
		return -EIO;
	};

	devpriv->int_ai_func = interrupt_pci9118_ai_onesample;	/* transfer function */

	if (devpriv->ai12_startstop)
		FUNC4(dev, EXTTRG_AI);	/*  activate EXT trigger */

	if ((devpriv->ai_do == 1) || (devpriv->ai_do == 2))
		devpriv->IntControlReg |= Int_Timer;

	devpriv->AdControlReg |= AdControl_Int;

	FUNC3(FUNC2(devpriv->iobase_a + AMCC_OP_REG_INTCSR) | 0x1f00, devpriv->iobase_a + AMCC_OP_REG_INTCSR);	/*  allow INT in AMCC */

	if (!(devpriv->ai12_startstop & (START_AI_EXT | START_AI_INT))) {
		FUNC3(devpriv->IntControlReg, dev->iobase + PCI9118_INTCTRL);
		FUNC3(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);
		if (devpriv->ai_do != 3) {
			FUNC5(dev, devpriv->ai_do, devpriv->ai_divisor1,
				    devpriv->ai_divisor2);
			devpriv->AdControlReg |= AdControl_SoftG;
		}
		FUNC3(devpriv->IntControlReg, dev->iobase + PCI9118_INTCTRL);
	}

	FUNC0("adl_pci9118 EDBG: END: pci9118_ai_docmd_sampl()\n");
	return 0;
}