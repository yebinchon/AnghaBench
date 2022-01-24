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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_ARG ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COMEDI_CB_EOS ; 
 scalar_t__ _8255_DATA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,short) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 

void FUNC3(struct comedi_device *dev,
			   struct comedi_subdevice *s)
{
	short d;

	d = FUNC0(0, _8255_DATA, 0, CALLBACK_ARG);
	d |= (FUNC0(0, _8255_DATA + 1, 0, CALLBACK_ARG) << 8);

	FUNC1(s->async, d);
	s->async->events |= COMEDI_CB_EOS;

	FUNC2(dev, s);
}