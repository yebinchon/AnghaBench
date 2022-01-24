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
struct TYPE_2__ {scalar_t__ i_IobaseAmcc; scalar_t__ iobase; int /*<<< orphan*/  tsk_Current; } ;

/* Variables and functions */
 int APCI1500_OR ; 
 int APCI1500_RW_CPT_TMR1_CMD_STATUS ; 
 int APCI1500_RW_CPT_TMR2_CMD_STATUS ; 
 int APCI1500_RW_CPT_TMR3_CMD_STATUS ; 
 int APCI1500_RW_MASTER_INTERRUPT_CONTROL ; 
 int APCI1500_RW_PORT_A_COMMAND_AND_STATUS ; 
 int APCI1500_RW_PORT_B_COMMAND_AND_STATUS ; 
 int APCI1500_RW_PORT_B_PATTERN_MASK ; 
 int APCI1500_RW_PORT_B_PATTERN_POLARITY ; 
 int APCI1500_RW_PORT_B_PATTERN_TRANSITION ; 
 int APCI1500_RW_PORT_B_SPECIFICATION ; 
 scalar_t__ APCI1500_Z8536_CONTROL_REGISTER ; 
 int EINVAL ; 
 int /*<<< orphan*/  current ; 
 TYPE_1__* devpriv ; 
 int FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	unsigned int ui_Status;
	int i_RegValue;
	int i_Constant;
	devpriv->tsk_Current = current;
	FUNC3(0x0, devpriv->i_IobaseAmcc + 0x38);
	if (data[0] == 1) {
		i_Constant = 0xC0;
	}			/* if(data[0]==1) */
	else {
		if (data[0] == 0) {
			i_Constant = 0x00;
		}		/* if{data[0]==0) */
		else {
			FUNC4("\nThe parameter passed to driver is in error for enabling the voltage interrupt\n");
			return -EINVAL;
		}		/* else if(data[0]==0) */
	}			/* elseif(data[0]==1) */

	 /*****************************************************/
	/* Selects the mode specification register of port B */
	 /*****************************************************/
	FUNC2(APCI1500_RW_PORT_B_SPECIFICATION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	i_RegValue = FUNC0(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC2(APCI1500_RW_PORT_B_SPECIFICATION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
      /*********************************************/
	/* Writes the new configuration (APCI1500_OR) */
      /*********************************************/
	i_RegValue = (i_RegValue & 0xF9) | APCI1500_OR;

	FUNC2(i_RegValue, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
       /*****************************************************/
	/* Selects the command and status register of port B */
       /*****************************************************/
	FUNC2(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/*****************************************/
	/* Authorises the interrupt on the board */
	/*****************************************/
	FUNC2(0xC0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/***************************************************/
	/* Selects the pattern polarity register of port B */
	/***************************************************/
	FUNC2(APCI1500_RW_PORT_B_PATTERN_POLARITY,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC2(i_Constant, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/*****************************************************/
	/* Selects the pattern transition register of port B */
	/*****************************************************/
	FUNC2(APCI1500_RW_PORT_B_PATTERN_TRANSITION,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC2(i_Constant, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/***********************************************/
	/* Selects the pattern mask register of port B */
	/***********************************************/
	FUNC2(APCI1500_RW_PORT_B_PATTERN_MASK,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC2(i_Constant, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	/*****************************************************/
	/* Selects the command and status register of port A */
	/*****************************************************/
	FUNC2(APCI1500_RW_PORT_A_COMMAND_AND_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	i_RegValue = FUNC0(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC2(APCI1500_RW_PORT_A_COMMAND_AND_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	 /***********************************/
	/* Deletes the interrupt of port A */
	 /***********************************/

	i_RegValue = (i_RegValue & 0x0F) | 0x20;
	FUNC2(i_RegValue, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/*****************************************************/
	/* Selects the command and status register of port  B */
	/*****************************************************/
	FUNC2(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	i_RegValue = FUNC0(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC2(APCI1500_RW_PORT_B_COMMAND_AND_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	 /***********************************/
	/* Deletes the interrupt of port B */
	 /***********************************/

	i_RegValue = (i_RegValue & 0x0F) | 0x20;
	FUNC2(i_RegValue, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	/*****************************************************/
	/* Selects the command and status register of timer 1 */
	/*****************************************************/
	FUNC2(APCI1500_RW_CPT_TMR1_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	i_RegValue = FUNC0(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC2(APCI1500_RW_CPT_TMR1_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	 /***********************************/
	/* Deletes the interrupt of timer 1 */
	 /***********************************/

	i_RegValue = (i_RegValue & 0x0F) | 0x20;
	FUNC2(i_RegValue, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	 /*****************************************************/
	/* Selects the command and status register of timer 2 */
	/*****************************************************/
	FUNC2(APCI1500_RW_CPT_TMR2_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	i_RegValue = FUNC0(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC2(APCI1500_RW_CPT_TMR2_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	 /***********************************/
	/* Deletes the interrupt of timer 2 */
	 /***********************************/

	i_RegValue = (i_RegValue & 0x0F) | 0x20;
	FUNC2(i_RegValue, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	/*****************************************************/
	/* Selects the command and status register of timer 3 */
	/*****************************************************/
	FUNC2(APCI1500_RW_CPT_TMR3_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	i_RegValue = FUNC0(devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	FUNC2(APCI1500_RW_CPT_TMR3_CMD_STATUS,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	 /***********************************/
	/* Deletes the interrupt of timer 3 */
	 /***********************************/

	i_RegValue = (i_RegValue & 0x0F) | 0x20;
	FUNC2(i_RegValue, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

	 /*************************************************/
	/* Selects the master interrupt control register */
	 /*************************************************/
	FUNC2(APCI1500_RW_MASTER_INTERRUPT_CONTROL,
		devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);
	/**********************************************/
	/* Authorizes the main interrupt on the board */
	/**********************************************/
	FUNC2(0xD0, devpriv->iobase + APCI1500_Z8536_CONTROL_REGISTER);

      /***************************/
	/* Enables the PCI interrupt */
      /*****************************/
	FUNC3(0x3000, devpriv->i_IobaseAmcc + 0x38);
	ui_Status = FUNC1(devpriv->i_IobaseAmcc + 0x10);
	ui_Status = FUNC1(devpriv->i_IobaseAmcc + 0x38);
	FUNC3(0x23000, devpriv->i_IobaseAmcc + 0x38);

	return insn->n;
}