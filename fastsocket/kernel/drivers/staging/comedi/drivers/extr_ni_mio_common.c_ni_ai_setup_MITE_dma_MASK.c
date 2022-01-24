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
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_6__ {int reg_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  prealloc_bufsz; } ;
struct TYPE_4__ {int /*<<< orphan*/  mite_channel_lock; int /*<<< orphan*/ * ai_mite_chan; } ;

/* Variables and functions */
 int EIO ; 
 int NI_AI_SUBDEV ; 
 TYPE_3__ boardtype ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
#define  ni_reg_611x 130 
#define  ni_reg_6143 129 
#define  ni_reg_628x 128 
 int FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
	struct comedi_subdevice *s = dev->subdevices + NI_AI_SUBDEV;
	int retval;
	unsigned long flags;

	retval = FUNC3(dev);
	if (retval)
		return retval;
/* printk("comedi_debug: using mite channel %i for ai.\n", devpriv->ai_mite_chan->channel); */

	/* write alloc the entire buffer */
	FUNC0(s->async, s->async->prealloc_bufsz);

	FUNC4(&devpriv->mite_channel_lock, flags);
	if (devpriv->ai_mite_chan == NULL) {
		FUNC5(&devpriv->mite_channel_lock, flags);
		return -EIO;
	}

	switch (boardtype.reg_type) {
	case ni_reg_611x:
	case ni_reg_6143:
		FUNC2(devpriv->ai_mite_chan, 32, 16);
		break;
	case ni_reg_628x:
		FUNC2(devpriv->ai_mite_chan, 32, 32);
		break;
	default:
		FUNC2(devpriv->ai_mite_chan, 16, 16);
		break;
	};
	/*start the MITE */
	FUNC1(devpriv->ai_mite_chan);
	FUNC5(&devpriv->mite_channel_lock, flags);

	return 0;
}