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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {int CntrlReg; int* ao_data; scalar_t__ da_ranges; } ;
struct TYPE_3__ {int n_aochan; } ;

/* Variables and functions */
 int Control_CNT0 ; 
 int Control_SW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PCI171x_CLRFIFO ; 
 scalar_t__ PCI171x_CLRINT ; 
 scalar_t__ PCI171x_CNTCTRL ; 
 scalar_t__ PCI171x_CONTROL ; 
 scalar_t__ PCI171x_DA1 ; 
 scalar_t__ PCI171x_DA2 ; 
 scalar_t__ PCI171x_DAREF ; 
 scalar_t__ PCI171x_DO ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	FUNC0("adv_pci1710 EDBG: BGN: pci171x_reset(...)\n");
	FUNC2(0x30, dev->iobase + PCI171x_CNTCTRL);
	devpriv->CntrlReg = Control_SW | Control_CNT0;	/*  Software trigger, CNT0=external */
	FUNC2(devpriv->CntrlReg, dev->iobase + PCI171x_CONTROL);	/*  reset any operations */
	FUNC1(0, dev->iobase + PCI171x_CLRFIFO);	/*  clear FIFO */
	FUNC1(0, dev->iobase + PCI171x_CLRINT);	/*  clear INT request */
	FUNC3(dev, -1, 0, 0);	/*  stop 8254 */
	devpriv->da_ranges = 0;
	if (this_board->n_aochan) {
		FUNC1(devpriv->da_ranges, dev->iobase + PCI171x_DAREF);	/*  set DACs to 0..5V */
		FUNC2(0, dev->iobase + PCI171x_DA1);	/*  set DA outputs to 0V */
		devpriv->ao_data[0] = 0x0000;
		if (this_board->n_aochan > 1) {
			FUNC2(0, dev->iobase + PCI171x_DA2);
			devpriv->ao_data[1] = 0x0000;
		}
	}
	FUNC2(0, dev->iobase + PCI171x_DO);	/*  digital outputs to 0 */
	FUNC1(0, dev->iobase + PCI171x_CLRFIFO);	/*  clear FIFO */
	FUNC1(0, dev->iobase + PCI171x_CLRINT);	/*  clear INT request */

	FUNC0("adv_pci1710 EDBG: END: pci171x_reset(...)\n");
	return 0;
}