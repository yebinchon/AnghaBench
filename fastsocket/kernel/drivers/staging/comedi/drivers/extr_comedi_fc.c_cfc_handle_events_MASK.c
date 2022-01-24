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
struct comedi_subdevice {int /*<<< orphan*/  (* cancel ) (struct comedi_device*,struct comedi_subdevice*) ;TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int events; } ;

/* Variables and functions */
 unsigned int COMEDI_CB_EOA ; 
 unsigned int COMEDI_CB_ERROR ; 
 unsigned int COMEDI_CB_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 

unsigned int FUNC2(struct comedi_device *dev,
			       struct comedi_subdevice *subd)
{
	unsigned int events = subd->async->events;

	if (events == 0)
		return events;

	if (events & (COMEDI_CB_EOA | COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW))
		subd->cancel(dev, subd);

	FUNC0(dev, subd);

	return events;
}