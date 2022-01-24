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
struct comedi_subdevice {scalar_t__ type; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 unsigned long CALLBACK_ARG ; 
 scalar_t__ COMEDI_SUBD_UNUSED ; 
 int /*<<< orphan*/  _8255_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	int i;
	unsigned long iobase;
	struct comedi_subdevice *s;

	FUNC0("comedi%d: 8255: remove\n", dev->minor);

	for (i = 0; i < dev->n_subdevices; i++) {
		s = dev->subdevices + i;
		if (s->type != COMEDI_SUBD_UNUSED) {
			iobase = CALLBACK_ARG;
			FUNC1(iobase, _8255_SIZE);
		}
		FUNC2(dev, s);
	}

	return 0;
}