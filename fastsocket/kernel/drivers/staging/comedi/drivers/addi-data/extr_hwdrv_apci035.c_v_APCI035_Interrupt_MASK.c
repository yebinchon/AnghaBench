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
typedef  int ui_StatusRegister1 ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tsk_Current; scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGIO ; 
 TYPE_1__* devpriv ; 
 int i_Flag ; 
 int i_Temp ; 
 int i_WatchdogNbr ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int irq, void *d)
{
	struct comedi_device *dev = d;
	unsigned int ui_StatusRegister1 = 0;
	unsigned int ui_StatusRegister2 = 0;
	unsigned int ui_ReadCommand = 0;
	unsigned int ui_ChannelNumber = 0;
	unsigned int ui_DigitalTemperature = 0;
	if (i_Temp == 1) {
		i_WatchdogNbr = i_Flag;
		i_Flag = i_Flag + 1;
	}
  /**************************************/
	/* Read the interrupt status register of temperature Warning */
  /**************************************/
	ui_StatusRegister1 = FUNC0(devpriv->iobase + 128 + 16);
  /**************************************/
	/* Read the interrupt status register for Watchdog/timer */
   /**************************************/

	ui_StatusRegister2 =
		FUNC0(devpriv->iobase + ((i_WatchdogNbr - 1) * 32) + 20);

	if ((((ui_StatusRegister1) & 0x8) == 0x8))	/* Test if warning relay interrupt */
	{
	/**********************************/
		/* Disable the temperature warning */
	/**********************************/
		ui_ReadCommand = FUNC0(devpriv->iobase + 128 + 12);
		ui_ReadCommand = ui_ReadCommand & 0xFFDF0000UL;
		FUNC1(ui_ReadCommand, devpriv->iobase + 128 + 12);
      /***************************/
		/* Read the channel number */
      /***************************/
		ui_ChannelNumber = FUNC0(devpriv->iobase + 128 + 60);
	/**************************************/
		/* Read the digital temperature value */
	/**************************************/
		ui_DigitalTemperature = FUNC0(devpriv->iobase + 128 + 60);
		FUNC2(SIGIO, devpriv->tsk_Current, 0);	/*  send signal to the sample */
	}			/* if (((ui_StatusRegister1 & 0x8) == 0x8)) */

	else {
		if ((ui_StatusRegister2 & 0x1) == 0x1) {
			FUNC2(SIGIO, devpriv->tsk_Current, 0);	/*  send signal to the sample */
		}
	}			/* else if (((ui_StatusRegister1 & 0x8) == 0x8)) */

	return;
}