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
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ cur_chan; int /*<<< orphan*/  events; } ;
struct TYPE_3__ {scalar_t__ ai_act_scan; scalar_t__ ai_scans; int /*<<< orphan*/  ai_neverending; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,short) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev,
				  struct comedi_subdevice *s, short *ptr,
				  unsigned int bufptr, unsigned int len)
{
	unsigned int i;

	s->async->events = 0;
	for (i = len; i; i--) {
		FUNC0(s->async, ptr[bufptr++]);	/*  get one sample */

		if (s->async->cur_chan == 0) {
			devpriv->ai_act_scan++;
			if (!devpriv->ai_neverending)
				if (devpriv->ai_act_scan >= devpriv->ai_scans) {	/* all data sampled */
					FUNC2(dev, s);
					s->async->events |= COMEDI_CB_EOA;
					break;
				}
		}
	}

	FUNC1(dev, s);
}