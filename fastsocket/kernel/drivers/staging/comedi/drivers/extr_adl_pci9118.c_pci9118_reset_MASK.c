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
struct TYPE_2__ {int IntControlReg; int AdControlReg; int AdFunctionReg; int* ao_data; scalar_t__ exttrg_users; scalar_t__ cnt0_users; } ;

/* Variables and functions */
 int AdFunction_PDTrg ; 
 int AdFunction_PETrg ; 
 scalar_t__ PCI9118_ADCNTRL ; 
 scalar_t__ PCI9118_ADFUNC ; 
 scalar_t__ PCI9118_ADSTAT ; 
 scalar_t__ PCI9118_AD_DATA ; 
 scalar_t__ PCI9118_BURST ; 
 scalar_t__ PCI9118_CNTCTRL ; 
 scalar_t__ PCI9118_DA1 ; 
 scalar_t__ PCI9118_DA2 ; 
 scalar_t__ PCI9118_DELFIFO ; 
 scalar_t__ PCI9118_DO ; 
 scalar_t__ PCI9118_INTCTRL ; 
 scalar_t__ PCI9118_INTSRC ; 
 scalar_t__ PCI9118_SCANMOD ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	devpriv->IntControlReg = 0;
	devpriv->exttrg_users = 0;
	FUNC0(dev->iobase + PCI9118_INTCTRL);
	FUNC1(devpriv->IntControlReg, dev->iobase + PCI9118_INTCTRL);	/*  disable interrupts source */
	FUNC1(0x30, dev->iobase + PCI9118_CNTCTRL);
/* outl(0xb4, dev->iobase + PCI9118_CNTCTRL); */
	FUNC2(dev, 0, 0, 0);	/*  stop 8254 counters */
	devpriv->AdControlReg = 0;
	FUNC1(devpriv->AdControlReg, dev->iobase + PCI9118_ADCNTRL);	/*  bipolar, S.E., use 8254, stop 8354, internal trigger, soft trigger, disable INT and DMA */
	FUNC1(0, dev->iobase + PCI9118_BURST);
	FUNC1(1, dev->iobase + PCI9118_SCANMOD);
	FUNC1(2, dev->iobase + PCI9118_SCANMOD);	/*  reset scan queue */
	devpriv->AdFunctionReg = AdFunction_PDTrg | AdFunction_PETrg;
	FUNC1(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);	/*  positive triggers, no S&H, no burst, burst stop, no post trigger, no about trigger, trigger stop */

	devpriv->ao_data[0] = 2047;
	devpriv->ao_data[1] = 2047;
	FUNC1(devpriv->ao_data[0], dev->iobase + PCI9118_DA1);	/*  reset A/D outs to 0V */
	FUNC1(devpriv->ao_data[1], dev->iobase + PCI9118_DA2);
	FUNC1(0, dev->iobase + PCI9118_DO);	/*  reset digi outs to L */
	FUNC3(10);
	FUNC0(dev->iobase + PCI9118_AD_DATA);
	FUNC1(0, dev->iobase + PCI9118_DELFIFO);	/*  flush FIFO */
	FUNC1(0, dev->iobase + PCI9118_INTSRC);	/*  remove INT requests */
	FUNC0(dev->iobase + PCI9118_ADSTAT);	/*  flush A/D status register */
	FUNC0(dev->iobase + PCI9118_INTSRC);	/*  flush INT requests */
	devpriv->AdControlReg = 0;
	FUNC1(devpriv->AdControlReg, dev->iobase + PCI9118_ADCNTRL);	/*  bipolar, S.E., use 8254, stop 8354, internal trigger, soft trigger, disable INT and DMA */

	devpriv->cnt0_users = 0;
	devpriv->exttrg_users = 0;

	return 0;
}