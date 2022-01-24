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
struct comedi_device {scalar_t__ irq; scalar_t__ iobase; int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  MULTIQ3_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	FUNC1("comedi%d: multiq3: remove\n", dev->minor);

	if (dev->iobase) {
		FUNC2(dev->iobase, MULTIQ3_SIZE);
	}
	if (dev->irq) {
		FUNC0(dev->irq, dev);
	}

	return 0;
}