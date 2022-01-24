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
struct comedi_device {scalar_t__ private; scalar_t__ irq; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ mite; scalar_t__ counter_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct comedi_device*) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
	FUNC4("comedi%d: ni_660x: remove\n", dev->minor);

	/* Free irq */
	if (dev->irq)
		FUNC0(dev->irq, dev);

	if (dev->private) {
		if (FUNC5(dev)->counter_dev)
			FUNC3(FUNC5(dev)->counter_dev);
		if (FUNC5(dev)->mite) {
			FUNC2(dev);
			FUNC1(FUNC5(dev)->mite);
		}
	}
	return 0;
}