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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int NI_AI_SUBDEV ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;

#ifdef PCIDMA
	ni_ai_drain_dma(dev);
#endif
	FUNC3(dev);
	FUNC0(dev);
	FUNC1(dev);

	s->async->events |= COMEDI_CB_EOA;
}