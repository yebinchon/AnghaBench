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
struct TYPE_2__ {int events; } ;

/* Variables and functions */
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int COMEDI_CB_OVERFLOW ; 
#define  NI_AI_SUBDEV 132 
#define  NI_AO_SUBDEV 131 
#define  NI_DIO_SUBDEV 130 
#define  NI_GPCT0_SUBDEV 129 
#define  NI_GPCT1_SUBDEV 128 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev, struct comedi_subdevice *s)
{
	if (s->
	    async->events & (COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW |
			     COMEDI_CB_EOA)) {
		switch (s - dev->subdevices) {
		case NI_AI_SUBDEV:
			FUNC1(dev, s);
			break;
		case NI_AO_SUBDEV:
			FUNC2(dev, s);
			break;
		case NI_GPCT0_SUBDEV:
		case NI_GPCT1_SUBDEV:
			FUNC4(dev, s);
			break;
		case NI_DIO_SUBDEV:
			FUNC3(dev, s);
			break;
		default:
			break;
		}
	}
	FUNC0(dev, s);
}