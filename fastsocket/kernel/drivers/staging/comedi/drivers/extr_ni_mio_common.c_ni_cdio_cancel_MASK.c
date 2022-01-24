#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int CDO_Disarm_Bit ; 
 int CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit ; 
 int CDO_Error_Interrupt_Enable_Clear_Bit ; 
 int CDO_FIFO_Request_Interrupt_Enable_Clear_Bit ; 
 int /*<<< orphan*/  M_Offset_CDIO_Command ; 
 int /*<<< orphan*/  M_Offset_CDO_Mask_Enable ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, struct comedi_subdevice *s)
{
	FUNC1(CDO_Disarm_Bit | CDO_Error_Interrupt_Enable_Clear_Bit |
		  CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit |
		  CDO_FIFO_Request_Interrupt_Enable_Clear_Bit,
		  M_Offset_CDIO_Command);
/*
* XXX not sure what interrupt C group does ni_writeb(0,
* M_Offset_Interrupt_C_Enable);
*/
	FUNC1(0, M_Offset_CDO_Mask_Enable);
	FUNC0(dev);
	return 0;
}