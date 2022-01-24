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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {unsigned int* act_chanlist; int /*<<< orphan*/  CntrlReg; } ;
struct TYPE_3__ {scalar_t__ cardtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  Control_CNT0 ; 
 int /*<<< orphan*/  Control_SW ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ETIME ; 
 scalar_t__ PCI171x_AD_DATA ; 
 scalar_t__ PCI171x_CLRFIFO ; 
 scalar_t__ PCI171x_CLRINT ; 
 scalar_t__ PCI171x_CONTROL ; 
 scalar_t__ PCI171x_SOFTTRG ; 
 scalar_t__ PCI171x_STATUS ; 
 int Status_FE ; 
 scalar_t__ TYPE_PCI1713 ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	int n, timeout;
#ifdef PCI171x_PARANOIDCHECK
	unsigned int idata;
#endif

	FUNC0("adv_pci1710 EDBG: BGN: pci171x_insn_read_ai(...)\n");
	devpriv->CntrlReg &= Control_CNT0;
	devpriv->CntrlReg |= Control_SW;	/*  set software trigger */
	FUNC4(devpriv->CntrlReg, dev->iobase + PCI171x_CONTROL);
	FUNC3(0, dev->iobase + PCI171x_CLRFIFO);
	FUNC3(0, dev->iobase + PCI171x_CLRINT);

	FUNC5(dev, s, &insn->chanspec, 1, 1);

	FUNC0("adv_pci1710 A ST=%4x IO=%x\n",
		FUNC2(dev->iobase + PCI171x_STATUS),
		dev->iobase + PCI171x_STATUS);
	for (n = 0; n < insn->n; n++) {
		FUNC4(0, dev->iobase + PCI171x_SOFTTRG);	/* start conversion */
		FUNC0("adv_pci1710 B n=%d ST=%4x\n", n,
			FUNC2(dev->iobase + PCI171x_STATUS));
		/* udelay(1); */
		FUNC0("adv_pci1710 C n=%d ST=%4x\n", n,
			FUNC2(dev->iobase + PCI171x_STATUS));
		timeout = 100;
		while (timeout--) {
			if (!(FUNC2(dev->iobase + PCI171x_STATUS) & Status_FE))
				goto conv_finish;
			if (!(timeout % 10))
				FUNC0("adv_pci1710 D n=%d tm=%d ST=%4x\n", n,
					timeout,
					FUNC2(dev->iobase + PCI171x_STATUS));
		}
		FUNC1(dev, "A/D insn timeout");
		FUNC3(0, dev->iobase + PCI171x_CLRFIFO);
		FUNC3(0, dev->iobase + PCI171x_CLRINT);
		data[n] = 0;
		FUNC0
		    ("adv_pci1710 EDBG: END: pci171x_insn_read_ai(...) n=%d\n",
		     n);
		return -ETIME;

conv_finish:
#ifdef PCI171x_PARANOIDCHECK
		idata = inw(dev->iobase + PCI171x_AD_DATA);
		if (this_board->cardtype != TYPE_PCI1713)
			if ((idata & 0xf000) != devpriv->act_chanlist[0]) {
				comedi_error(dev, "A/D insn data droput!");
				return -ETIME;
			}
		data[n] = idata & 0x0fff;
#else
		data[n] = FUNC2(dev->iobase + PCI171x_AD_DATA) & 0x0fff;
#endif

	}

	FUNC3(0, dev->iobase + PCI171x_CLRFIFO);
	FUNC3(0, dev->iobase + PCI171x_CLRINT);

	FUNC0("adv_pci1710 EDBG: END: pci171x_insn_read_ai(...) n=%d\n", n);
	return n;
}