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
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mite_channel_lock; TYPE_1__* mite; int /*<<< orphan*/ * di_mite_chan; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;

/* Variables and functions */
 scalar_t__ DMA_Line_Control_Group1 ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev)
{
	unsigned long flags;

	FUNC6(&devpriv->mite_channel_lock, flags);
	if (devpriv->di_mite_chan) {
		FUNC0(devpriv->di_mite_chan);
		FUNC1(devpriv->di_mite_chan);
		FUNC2(devpriv->di_mite_chan);
		devpriv->di_mite_chan = NULL;
		FUNC8(FUNC4(0) |
		       FUNC5(0),
		       devpriv->mite->daq_io_addr + DMA_Line_Control_Group1);
		FUNC3();
	}
	FUNC7(&devpriv->mite_channel_lock, flags);
}