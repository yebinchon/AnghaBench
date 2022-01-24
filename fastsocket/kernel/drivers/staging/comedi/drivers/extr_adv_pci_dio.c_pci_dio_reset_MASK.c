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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int cardtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PCI1730_3_INT_CLR ; 
 scalar_t__ PCI1730_3_INT_EN ; 
 scalar_t__ PCI1730_3_INT_RF ; 
 scalar_t__ PCI1730_DO ; 
 scalar_t__ PCI1730_IDO ; 
 scalar_t__ PCI1734_IDO ; 
 scalar_t__ PCI1736_3_INT_CLR ; 
 scalar_t__ PCI1736_3_INT_EN ; 
 scalar_t__ PCI1736_3_INT_RF ; 
 scalar_t__ PCI1736_IDO ; 
 scalar_t__ PCI1750_ICR ; 
 scalar_t__ PCI1752_6_CFC ; 
 scalar_t__ PCI1752_IDO ; 
 scalar_t__ PCI1752_IDO2 ; 
 scalar_t__ PCI1753E_ICR0 ; 
 scalar_t__ PCI1753E_ICR1 ; 
 scalar_t__ PCI1753E_ICR2 ; 
 scalar_t__ PCI1753E_ICR3 ; 
 scalar_t__ PCI1753_ICR0 ; 
 scalar_t__ PCI1753_ICR1 ; 
 scalar_t__ PCI1753_ICR2 ; 
 scalar_t__ PCI1753_ICR3 ; 
 scalar_t__ PCI1754_6_ICR0 ; 
 scalar_t__ PCI1754_6_ICR1 ; 
 scalar_t__ PCI1754_ICR2 ; 
 scalar_t__ PCI1754_ICR3 ; 
 scalar_t__ PCI1756_IDO ; 
 scalar_t__ PCI1762_ICR ; 
#define  TYPE_PCI1730 140 
#define  TYPE_PCI1733 139 
#define  TYPE_PCI1734 138 
#define  TYPE_PCI1736 137 
#define  TYPE_PCI1750 136 
#define  TYPE_PCI1751 135 
#define  TYPE_PCI1752 134 
#define  TYPE_PCI1753 133 
#define  TYPE_PCI1753E 132 
#define  TYPE_PCI1754 131 
#define  TYPE_PCI1756 130 
#define  TYPE_PCI1760 129 
#define  TYPE_PCI1762 128 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	FUNC0("adv_pci_dio EDBG: BGN: pci171x_reset(...)\n");

	switch (this_board->cardtype) {
	case TYPE_PCI1730:
		FUNC1(0, dev->iobase + PCI1730_DO);	/*  clear outputs */
		FUNC1(0, dev->iobase + PCI1730_DO + 1);
		FUNC1(0, dev->iobase + PCI1730_IDO);
		FUNC1(0, dev->iobase + PCI1730_IDO + 1);
		/* NO break there! */
	case TYPE_PCI1733:
		FUNC1(0, dev->iobase + PCI1730_3_INT_EN);	/*  disable interrupts */
		FUNC1(0x0f, dev->iobase + PCI1730_3_INT_CLR);	/*  clear interrupts */
		FUNC1(0, dev->iobase + PCI1730_3_INT_RF);	/*  set rising edge trigger */
		break;
	case TYPE_PCI1734:
		FUNC1(0, dev->iobase + PCI1734_IDO);	/*  clear outputs */
		FUNC1(0, dev->iobase + PCI1734_IDO + 1);
		FUNC1(0, dev->iobase + PCI1734_IDO + 2);
		FUNC1(0, dev->iobase + PCI1734_IDO + 3);
		break;

	case TYPE_PCI1736:
		FUNC1(0, dev->iobase + PCI1736_IDO);
		FUNC1(0, dev->iobase + PCI1736_IDO + 1);
		FUNC1(0, dev->iobase + PCI1736_3_INT_EN);	/*  disable interrupts */
		FUNC1(0x0f, dev->iobase + PCI1736_3_INT_CLR);	/*  clear interrupts */
		FUNC1(0, dev->iobase + PCI1736_3_INT_RF);	/*  set rising edge trigger */
		break;

	case TYPE_PCI1750:
	case TYPE_PCI1751:
		FUNC1(0x88, dev->iobase + PCI1750_ICR);	/*  disable & clear interrupts */
		break;
	case TYPE_PCI1752:
		FUNC2(0, dev->iobase + PCI1752_6_CFC);	/*  disable channel freeze function */
		FUNC2(0, dev->iobase + PCI1752_IDO);	/*  clear outputs */
		FUNC2(0, dev->iobase + PCI1752_IDO + 2);
		FUNC2(0, dev->iobase + PCI1752_IDO2);
		FUNC2(0, dev->iobase + PCI1752_IDO2 + 2);
		break;
	case TYPE_PCI1753E:
		FUNC1(0x88, dev->iobase + PCI1753E_ICR0);	/*  disable & clear interrupts */
		FUNC1(0x80, dev->iobase + PCI1753E_ICR1);
		FUNC1(0x80, dev->iobase + PCI1753E_ICR2);
		FUNC1(0x80, dev->iobase + PCI1753E_ICR3);
		/* NO break there! */
	case TYPE_PCI1753:
		FUNC1(0x88, dev->iobase + PCI1753_ICR0);	/*  disable & clear interrupts */
		FUNC1(0x80, dev->iobase + PCI1753_ICR1);
		FUNC1(0x80, dev->iobase + PCI1753_ICR2);
		FUNC1(0x80, dev->iobase + PCI1753_ICR3);
		break;
	case TYPE_PCI1754:
		FUNC2(0x08, dev->iobase + PCI1754_6_ICR0);	/*  disable and clear interrupts */
		FUNC2(0x08, dev->iobase + PCI1754_6_ICR1);
		FUNC2(0x08, dev->iobase + PCI1754_ICR2);
		FUNC2(0x08, dev->iobase + PCI1754_ICR3);
		break;
	case TYPE_PCI1756:
		FUNC2(0, dev->iobase + PCI1752_6_CFC);	/*  disable channel freeze function */
		FUNC2(0x08, dev->iobase + PCI1754_6_ICR0);	/*  disable and clear interrupts */
		FUNC2(0x08, dev->iobase + PCI1754_6_ICR1);
		FUNC2(0, dev->iobase + PCI1756_IDO);	/*  clear outputs */
		FUNC2(0, dev->iobase + PCI1756_IDO + 2);
		break;
	case TYPE_PCI1760:
		FUNC3(dev);
		break;
	case TYPE_PCI1762:
		FUNC2(0x0101, dev->iobase + PCI1762_ICR);	/*  disable & clear interrupts */
		break;
	}

	FUNC0("adv_pci_dio EDBG: END: pci171x_reset(...)\n");

	return 0;
}