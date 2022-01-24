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
struct comedi_device {scalar_t__ iobase; scalar_t__ irq; scalar_t__ subdevices; int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 scalar_t__ DAS16M1_82C55 ; 
 int /*<<< orphan*/  DAS16M1_SIZE ; 
 int /*<<< orphan*/  DAS16M1_SIZE2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	FUNC1("comedi%d: das16m1: remove\n", dev->minor);

/* das16m1_reset(dev); */

	if (dev->subdevices)
		FUNC3(dev, dev->subdevices + 3);

	if (dev->irq)
		FUNC0(dev->irq, dev);

	if (dev->iobase) {
		FUNC2(dev->iobase, DAS16M1_SIZE);
		FUNC2(dev->iobase + DAS16M1_82C55, DAS16M1_SIZE2);
	}

	return 0;
}