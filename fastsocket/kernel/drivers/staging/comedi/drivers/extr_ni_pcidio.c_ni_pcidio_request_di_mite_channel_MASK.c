#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  mite_channel_lock; TYPE_2__* mite; TYPE_1__* di_mite_chan; int /*<<< orphan*/  di_mite_ring; } ;
struct TYPE_6__ {scalar_t__ daq_io_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ DMA_Line_Control_Group1 ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_3__* devpriv ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev)
{
	unsigned long flags;

	FUNC6(&devpriv->mite_channel_lock, flags);
	FUNC0(devpriv->di_mite_chan);
	devpriv->di_mite_chan =
	    FUNC2(devpriv->mite,
					  devpriv->di_mite_ring, 1, 2);
	if (devpriv->di_mite_chan == NULL) {
		FUNC7(&devpriv->mite_channel_lock, flags);
		FUNC1(dev, "failed to reserve mite dma channel.");
		return -EBUSY;
	}
	FUNC8(FUNC4(devpriv->di_mite_chan->channel) |
	       FUNC5(devpriv->di_mite_chan->channel),
	       devpriv->mite->daq_io_addr + DMA_Line_Control_Group1);
	FUNC3();
	FUNC7(&devpriv->mite_channel_lock, flags);
	return 0;
}