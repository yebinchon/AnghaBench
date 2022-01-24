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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int (* stc_readw ) (struct comedi_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mite_channel_lock; scalar_t__ ai_mite_chan; } ;

/* Variables and functions */
 int AI_FIFO_Empty_St ; 
 int /*<<< orphan*/  AI_Status_1_Register ; 
 TYPE_1__* devpriv ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev)
{
	int i;
	static const int timeout = 10000;
	unsigned long flags;
	int retval = 0;

	FUNC3(&devpriv->mite_channel_lock, flags);
	if (devpriv->ai_mite_chan) {
		for (i = 0; i < timeout; i++) {
			if ((devpriv->stc_readw(dev,
						AI_Status_1_Register) &
			     AI_FIFO_Empty_St)
			    && FUNC0(devpriv->ai_mite_chan) ==
			    0)
				break;
			FUNC7(5);
		}
		if (i == timeout) {
			FUNC2("ni_mio_common: wait for dma drain timed out\n");
			FUNC2
			    ("mite_bytes_in_transit=%i, AI_Status1_Register=0x%x\n",
			     FUNC0(devpriv->ai_mite_chan),
			     devpriv->stc_readw(dev, AI_Status_1_Register));
			retval = -1;
		}
	}
	FUNC4(&devpriv->mite_channel_lock, flags);

	FUNC1(dev);

	return retval;
}