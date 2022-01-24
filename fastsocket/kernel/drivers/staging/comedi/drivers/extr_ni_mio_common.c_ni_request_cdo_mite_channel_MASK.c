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
struct TYPE_5__ {int /*<<< orphan*/  mite_channel_lock; TYPE_1__* cdo_mite_chan; int /*<<< orphan*/  cdo_mite_ring; int /*<<< orphan*/  mite; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  COMEDI_OUTPUT ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
#ifdef PCIDMA
	unsigned long flags;

	spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
	BUG_ON(devpriv->cdo_mite_chan);
	devpriv->cdo_mite_chan =
	    mite_request_channel(devpriv->mite, devpriv->cdo_mite_ring);
	if (devpriv->cdo_mite_chan == NULL) {
		spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
		comedi_error(dev,
			     "failed to reserve mite dma channel for correlated digital outut.");
		return -EBUSY;
	}
	devpriv->cdo_mite_chan->dir = COMEDI_OUTPUT;
	ni_set_cdo_dma_channel(dev, devpriv->cdo_mite_chan->channel);
	spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
#endif /*  PCIDMA */
	return 0;
}