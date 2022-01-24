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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {int us_OutputRegister; void* b_EocEosInterrupt; int /*<<< orphan*/  b_InterruptMode; void* b_AiCyclicAcquisition; scalar_t__ ui_DmaActualBuffer; scalar_t__ b_AiContinuous; scalar_t__ ui_AiBufferPtr; scalar_t__ ui_AiActualScanPosition; scalar_t__ ui_AiActualScan; scalar_t__ i_IobaseAmcc; scalar_t__ i_IobaseAddon; } ;
struct TYPE_3__ {scalar_t__ cur_chan; } ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_MCSR ; 
 int APCI3120_ADD_ON_AGCSTS_HIGH ; 
 int APCI3120_ADD_ON_AGCSTS_LOW ; 
 void* APCI3120_DISABLE ; 
 int /*<<< orphan*/  APCI3120_DISABLE_ALL_INTERRUPT ; 
 int APCI3120_DISABLE_ALL_TIMER ; 
 int APCI3120_DISABLE_TIMER0 ; 
 int APCI3120_DISABLE_TIMER1 ; 
 int /*<<< orphan*/  APCI3120_EOC_MODE ; 
 scalar_t__ APCI3120_RD_STATUS ; 
 scalar_t__ APCI3120_RESET_FIFO ; 
 scalar_t__ APCI3120_WRITE_MODE_SELECT ; 
 scalar_t__ APCI3120_WR_ADDRESS ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

int FUNC7(struct comedi_device *dev, struct comedi_subdevice *s)
{
	/*  Disable A2P Fifo write and AMWEN signal */
	FUNC6(0, devpriv->i_IobaseAddon + 4);

	/* Disable Bus Master ADD ON */
	FUNC6(APCI3120_ADD_ON_AGCSTS_LOW, devpriv->i_IobaseAddon + 0);
	FUNC6(0, devpriv->i_IobaseAddon + 2);
	FUNC6(APCI3120_ADD_ON_AGCSTS_HIGH, devpriv->i_IobaseAddon + 0);
	FUNC6(0, devpriv->i_IobaseAddon + 2);

	/* Disable BUS Master PCI */
	FUNC5(0, devpriv->i_IobaseAmcc + AMCC_OP_REG_MCSR);

	/* outl(inl(devpriv->i_IobaseAmcc+AMCC_OP_REG_INTCSR)&(~AINT_WRITE_COMPL),
	 * devpriv->i_IobaseAmcc+AMCC_OP_REG_INTCSR);  stop amcc irqs */

	/* outl(inl(devpriv->i_IobaseAmcc+AMCC_OP_REG_MCSR)&(~EN_A2P_TRANSFERS),
	 * devpriv->i_IobaseAmcc+AMCC_OP_REG_MCSR);  stop DMA */

	/* Disable ext trigger */
	FUNC0(dev);

	devpriv->us_OutputRegister = 0;
	/* stop  counters */
	FUNC6(devpriv->
		us_OutputRegister & APCI3120_DISABLE_TIMER0 &
		APCI3120_DISABLE_TIMER1, dev->iobase + APCI3120_WR_ADDRESS);

	FUNC6(APCI3120_DISABLE_ALL_TIMER, dev->iobase + APCI3120_WR_ADDRESS);

	/* DISABLE_ALL_INTERRUPT */
	FUNC4(APCI3120_DISABLE_ALL_INTERRUPT,
		dev->iobase + APCI3120_WRITE_MODE_SELECT);
	/* Flush FIFO */
	FUNC2(dev->iobase + APCI3120_RESET_FIFO);
	FUNC3(dev->iobase + APCI3120_RD_STATUS);
	devpriv->ui_AiActualScan = 0;
	devpriv->ui_AiActualScanPosition = 0;
	s->async->cur_chan = 0;
	devpriv->ui_AiBufferPtr = 0;
	devpriv->b_AiContinuous = 0;
	devpriv->ui_DmaActualBuffer = 0;

	devpriv->b_AiCyclicAcquisition = APCI3120_DISABLE;
	devpriv->b_InterruptMode = APCI3120_EOC_MODE;
	devpriv->b_EocEosInterrupt = APCI3120_DISABLE;
	FUNC1(dev);
	return 0;
}