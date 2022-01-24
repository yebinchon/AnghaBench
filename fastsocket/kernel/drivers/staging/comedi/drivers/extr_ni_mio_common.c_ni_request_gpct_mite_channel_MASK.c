#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mite_channel {int dir; int /*<<< orphan*/  channel; } ;
struct comedi_device {int dummy; } ;
typedef  enum comedi_io_direction { ____Placeholder_comedi_io_direction } comedi_io_direction ;
struct TYPE_6__ {int /*<<< orphan*/  mite_channel_lock; TYPE_1__* counter_dev; int /*<<< orphan*/ * gpct_mite_ring; int /*<<< orphan*/  mite; } ;
struct TYPE_5__ {int mite_chan; } ;
struct TYPE_4__ {TYPE_2__* counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 unsigned int NUM_GPCT ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_3__* devpriv ; 
 struct mite_channel* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct mite_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
					unsigned gpct_index,
					enum comedi_io_direction direction)
{
	unsigned long flags;
	struct mite_channel *mite_chan;

	FUNC0(gpct_index >= NUM_GPCT);
	FUNC5(&devpriv->mite_channel_lock, flags);
	FUNC0(devpriv->counter_dev->counters[gpct_index].mite_chan);
	mite_chan =
	    FUNC2(devpriv->mite,
				 devpriv->gpct_mite_ring[gpct_index]);
	if (mite_chan == NULL) {
		FUNC6(&devpriv->mite_channel_lock, flags);
		FUNC1(dev,
			     "failed to reserve mite dma channel for counter.");
		return -EBUSY;
	}
	mite_chan->dir = direction;
	FUNC4(&devpriv->counter_dev->counters[gpct_index],
				mite_chan);
	FUNC3(dev, gpct_index, mite_chan->channel);
	FUNC6(&devpriv->mite_channel_lock, flags);
	return 0;
}