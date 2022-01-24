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
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;

/* Variables and functions */
 scalar_t__ Clear_Register ; 
 int ClrEdge ; 
 int ClrOverflow ; 
 int EdgeIntEnable ; 
 int FallingEdgeIntEnable ; 
 int MasterInterruptEnable ; 
 scalar_t__ Master_Interrupt_Control ; 
 int RisingEdgeIntEnable ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	/* struct comedi_cmd *cmd = &s->async->cmd; */

	FUNC0(ClrEdge | ClrOverflow,
	       devpriv->mite->daq_io_addr + Clear_Register);
	FUNC0(FallingEdgeIntEnable | RisingEdgeIntEnable |
	       MasterInterruptEnable | EdgeIntEnable,
	       devpriv->mite->daq_io_addr + Master_Interrupt_Control);

	return 0;
}