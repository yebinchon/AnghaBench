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
struct comedi_device {scalar_t__ iobase; scalar_t__ irq; scalar_t__ subdevices; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ has_8255; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMIO16D_SIZE ; 
 TYPE_1__* boardtype ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev)
{
	FUNC1("comedi%d: atmio16d: remove\n", dev->minor);

	if (dev->subdevices && boardtype->has_8255)
		FUNC4(dev, dev->subdevices + 3);

	if (dev->irq)
		FUNC0(dev->irq, dev);

	FUNC3(dev);

	if (dev->iobase)
		FUNC2(dev->iobase, ATMIO16D_SIZE);

	return 0;
}