#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {TYPE_3__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  events; } ;
struct TYPE_5__ {TYPE_1__* mite; } ;
struct TYPE_4__ {scalar_t__ daq_io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOS ; 
 scalar_t__ Change_Status ; 
 scalar_t__ Clear_Register ; 
 int ClrEdge ; 
 int ClrOverflow ; 
 unsigned int EdgeStatus ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int MasterInterruptStatus ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_2__* FUNC2 (struct comedi_device*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->subdevices + 2;
	unsigned int status;

	status = FUNC3(FUNC2(dev)->mite->daq_io_addr + Change_Status);
	if ((status & MasterInterruptStatus) == 0)
		return IRQ_NONE;
	if ((status & EdgeStatus) == 0)
		return IRQ_NONE;

	FUNC4(ClrEdge | ClrOverflow,
	       FUNC2(dev)->mite->daq_io_addr + Clear_Register);

	FUNC0(s->async, 0);
	s->async->events |= COMEDI_CB_EOS;
	FUNC1(dev, s);
	return IRQ_HANDLED;
}