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
struct ni_gpct {int /*<<< orphan*/  lock; scalar_t__ mite_chan; } ;
struct comedi_subdevice {TYPE_1__* async; struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * inttrig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  NI_GPCT_ARM_IMMEDIATE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct ni_gpct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				struct comedi_subdevice *s,
				unsigned int trignum)
{
	unsigned long flags;
	int retval = 0;
	struct ni_gpct *counter = s->private;

	FUNC0(counter == NULL);
	if (trignum != 0)
		return -EINVAL;

	FUNC3(&counter->lock, flags);
	if (counter->mite_chan)
		FUNC1(counter->mite_chan);
	else
		retval = -EIO;
	FUNC4(&counter->lock, flags);
	if (retval < 0)
		return retval;
	retval = FUNC2(counter, 1, NI_GPCT_ARM_IMMEDIATE);
	s->async->inttrig = NULL;

	return retval;
}