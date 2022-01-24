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
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;

/* Variables and functions */
 int APCI1500_RW_CPT_TMR1_CMD_STATUS ; 
 int APCI1500_RW_CPT_TMR2_CMD_STATUS ; 
 int APCI1500_RW_CPT_TMR3_CMD_STATUS ; 
 int APCI1500_RW_MASTER_CONFIGURATION_CONTROL ; 
 int APCI1500_RW_MASTER_INTERRUPT_CONTROL ; 
 int APCI1500_RW_PORT_A_COMMAND_AND_STATUS ; 
 int APCI1500_RW_PORT_A_DATA_DIRECTION ; 
 int APCI1500_RW_PORT_A_DATA_PCITCH_POLARITY ; 
 int APCI1500_RW_PORT_A_HANDSHAKE_SPECIFICATION ; 
 int APCI1500_RW_PORT_A_SPECIFICATION ; 
 int APCI1500_RW_PORT_B_COMMAND_AND_STATUS ; 
 int APCI1500_RW_PORT_B_DATA_DIRECTION ; 
 int APCI1500_RW_PORT_B_DATA_PCITCH_POLARITY ; 
 int APCI1500_RW_PORT_B_HANDSHAKE_SPECIFICATION ; 
 int APCI1500_RW_PORT_B_SPECIFICATION ; 
 int APCI1500_RW_PORT_C_DATA_DIRECTION ; 
 int APCI1500_RW_PORT_C_DATA_PCITCH_POLARITY ; 
 int APCI1500_RW_PORT_C_SPECIAL_IO_CONTROL ; 
 scalar_t__ APCI1500_Z8536_CONTROL_REGISTER ; 
 TYPE_1__* devpriv ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

int FUNC2(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	int i_DummyRead = 0;
    /******************/
	/* Software reset */
    /******************/
	i_DummyRead = FUNC0(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC1(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	i_DummyRead = FUNC0(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC1(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC1(1, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC1(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

 /*****************************************************/
	/* Selects the master configuration control register */
 /*****************************************************/
	FUNC1(APCI1500_RW_MASTER_CONFIGURATION_CONTROL,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC1(0xF4, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	/*****************************************************/
	/* Selects the mode specification register of port A */
	/*****************************************************/
	FUNC1(APCI1500_RW_PORT_A_SPECIFICATION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC1(0x10, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	/* Selects the data path polarity register of port A */
	FUNC1(APCI1500_RW_PORT_A_DATA_PCITCH_POLARITY,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* High level of port A means 1 */
	FUNC1(0xFF, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	/* Selects the data direction register of port A */
	FUNC1(APCI1500_RW_PORT_A_DATA_DIRECTION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* All bits used as inputs */
	FUNC1(0xFF, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the command and status register of port A */
	FUNC1(APCI1500_RW_PORT_A_COMMAND_AND_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deletes IP and IUS */
	FUNC1(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/*  Selects the command and status register of port A */
	FUNC1(APCI1500_RW_PORT_A_COMMAND_AND_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deactivates the interrupt management of port A:  */
	FUNC1(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the handshake specification register of port A */
	FUNC1(APCI1500_RW_PORT_A_HANDSHAKE_SPECIFICATION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deletes the register */
	FUNC1(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	 /*****************************************************/
	/* Selects the mode specification register of port B */
	 /*****************************************************/
	FUNC1(APCI1500_RW_PORT_B_SPECIFICATION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC1(0x10, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the data path polarity register of port B */
	FUNC1(APCI1500_RW_PORT_B_DATA_PCITCH_POLARITY,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* A high level of port B means 1 */
	FUNC1(0x7F, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the data direction register of port B */
	FUNC1(APCI1500_RW_PORT_B_DATA_DIRECTION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* All bits used as inputs */
	FUNC1(0xFF, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the command and status register of port B */
	FUNC1(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deletes IP and IUS */
	FUNC1(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the command and status register of port B */
	FUNC1(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deactivates the interrupt management of port B:         */
	FUNC1(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the handshake specification register of port B */
	FUNC1(APCI1500_RW_PORT_B_HANDSHAKE_SPECIFICATION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deletes the register */
	FUNC1(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	   /*****************************************************/
	/* Selects the data path polarity register of port C */
	   /*****************************************************/
	FUNC1(APCI1500_RW_PORT_C_DATA_PCITCH_POLARITY,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* High level of port C means 1 */
	FUNC1(0x9, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the data direction register of port C */
	FUNC1(APCI1500_RW_PORT_C_DATA_DIRECTION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* All bits used as inputs except channel 1 */
	FUNC1(0x0E, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the special IO register of port C */
	FUNC1(APCI1500_RW_PORT_C_SPECIAL_IO_CONTROL,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deletes it */
	FUNC1(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	   /******************************************************/
	/* Selects the command and status register of timer 1 */
	   /******************************************************/
	FUNC1(APCI1500_RW_CPT_TMR1_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deletes IP and IUS */
	FUNC1(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the command and status register of timer 1 */
	FUNC1(APCI1500_RW_CPT_TMR1_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deactivates the interrupt management of timer 1         */
	FUNC1(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	   /******************************************************/
	/* Selects the command and status register of timer 2 */
	   /******************************************************/
	FUNC1(APCI1500_RW_CPT_TMR2_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deletes IP and IUS */
	FUNC1(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the command and status register of timer 2 */
	FUNC1(APCI1500_RW_CPT_TMR2_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deactivates Timer 2 interrupt management:               */
	FUNC1(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	  /******************************************************/
	/* Selects the command and status register of timer 3 */
	  /******************************************************/
	FUNC1(APCI1500_RW_CPT_TMR3_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deletes IP and IUS */
	FUNC1(0x20, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Selects the command and status register of Timer 3 */
	FUNC1(APCI1500_RW_CPT_TMR3_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deactivates interrupt management of timer 3:            */
	FUNC1(0xE0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	 /*************************************************/
	/* Selects the master interrupt control register */
	 /*************************************************/
	FUNC1(APCI1500_RW_MASTER_INTERRUPT_CONTROL,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/* Deletes all interrupts */
	FUNC1(0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	return insn->n;
}