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
struct comedi_device {scalar_t__ irq; scalar_t__ private; TYPE_1__* subdevices; int /*<<< orphan*/  minor; } ;
struct TYPE_4__ {scalar_t__ mite; } ;
struct TYPE_3__ {scalar_t__ range_table_list; } ;

/* Variables and functions */
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	FUNC3("comedi%d: ni_670x: remove\n", dev->minor);

	if (dev->subdevices[0].range_table_list) {
		FUNC1(dev->subdevices[0].range_table_list);
	}
	if (dev->private && devpriv->mite)
		FUNC2(devpriv->mite);

	if (dev->irq)
		FUNC0(dev->irq, dev);

	return 0;
}