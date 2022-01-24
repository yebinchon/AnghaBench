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
struct dio200_subdev_intr {int /*<<< orphan*/  spinlock; scalar_t__ active; } ;
struct comedi_subdevice {TYPE_1__* async; struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ inttrig; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct comedi_device *dev, struct comedi_subdevice *s,
			  unsigned int trignum)
{
	struct dio200_subdev_intr *subpriv;
	unsigned long flags;
	int event = 0;

	if (trignum != 0)
		return -EINVAL;

	subpriv = s->private;

	FUNC2(&subpriv->spinlock, flags);
	s->async->inttrig = 0;
	if (subpriv->active) {
		event = FUNC1(dev, s);
	}
	FUNC3(&subpriv->spinlock, flags);

	if (event) {
		FUNC0(dev, s);
	}

	return 1;
}