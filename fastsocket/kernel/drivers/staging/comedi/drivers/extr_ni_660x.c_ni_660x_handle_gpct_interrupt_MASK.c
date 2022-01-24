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
struct TYPE_2__ {int events; } ;

/* Variables and functions */
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int COMEDI_CB_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_subdevice*) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
					  struct comedi_subdevice *s)
{
	FUNC2(FUNC3(s), s);
	if (s->async->events) {
		if (s->async->events & (COMEDI_CB_EOA | COMEDI_CB_ERROR |
					COMEDI_CB_OVERFLOW)) {
			FUNC1(dev, s);
		}
		FUNC0(dev, s);
	}
}