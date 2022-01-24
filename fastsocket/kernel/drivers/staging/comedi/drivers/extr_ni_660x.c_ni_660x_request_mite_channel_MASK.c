#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ni_gpct {int /*<<< orphan*/  mite_chan; } ;
struct mite_channel {int dir; int /*<<< orphan*/  channel; } ;
struct comedi_device {int dummy; } ;
typedef  enum comedi_io_direction { ____Placeholder_comedi_io_direction } comedi_io_direction ;
struct TYPE_3__ {int /*<<< orphan*/  mite_channel_lock; int /*<<< orphan*/  mite; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 struct mite_channel* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ni_gpct*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,struct ni_gpct*) ; 
 int /*<<< orphan*/  FUNC5 (struct ni_gpct*,struct mite_channel*) ; 
 TYPE_1__* FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
					struct ni_gpct *counter,
					enum comedi_io_direction direction)
{
	unsigned long flags;
	struct mite_channel *mite_chan;

	FUNC7(&FUNC6(dev)->mite_channel_lock, flags);
	FUNC0(counter->mite_chan);
	mite_chan =
	    FUNC2(FUNC6(dev)->mite, FUNC3(FUNC6(dev),
							       counter));
	if (mite_chan == NULL) {
		FUNC8(&FUNC6(dev)->mite_channel_lock, flags);
		FUNC1(dev,
			     "failed to reserve mite dma channel for counter.");
		return -EBUSY;
	}
	mite_chan->dir = direction;
	FUNC5(counter, mite_chan);
	FUNC4(dev, mite_chan->channel, counter);
	FUNC8(&FUNC6(dev)->mite_channel_lock, flags);
	return 0;
}