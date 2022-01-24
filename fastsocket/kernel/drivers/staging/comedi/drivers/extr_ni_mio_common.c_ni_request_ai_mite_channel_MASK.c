#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mite_channel_lock; TYPE_1__* ai_mite_chan; int /*<<< orphan*/  ai_mite_ring; int /*<<< orphan*/  mite; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  COMEDI_INPUT ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
	unsigned long flags;

	FUNC4(&devpriv->mite_channel_lock, flags);
	FUNC0(devpriv->ai_mite_chan);
	devpriv->ai_mite_chan =
	    FUNC2(devpriv->mite, devpriv->ai_mite_ring);
	if (devpriv->ai_mite_chan == NULL) {
		FUNC5(&devpriv->mite_channel_lock, flags);
		FUNC1(dev,
			     "failed to reserve mite dma channel for analog input.");
		return -EBUSY;
	}
	devpriv->ai_mite_chan->dir = COMEDI_INPUT;
	FUNC3(dev, devpriv->ai_mite_chan->channel);
	FUNC5(&devpriv->mite_channel_lock, flags);
	return 0;
}