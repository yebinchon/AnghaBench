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
struct TYPE_4__ {int /*<<< orphan*/  mite_channel_lock; scalar_t__ ao_mite_chan; } ;

/* Variables and functions */
 int EIO ; 
 int NI_AO_SUBDEV ; 
 TYPE_3__ boardtype ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 
 int ni_reg_611x ; 
 int ni_reg_6713 ; 
 int FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
	struct comedi_subdevice *s = dev->subdevices + NI_AO_SUBDEV;
	int retval;
	unsigned long flags;

	retval = FUNC3(dev);
	if (retval)
		return retval;

	/* read alloc the entire buffer */
	FUNC0(s->async, s->async->prealloc_bufsz);

	FUNC4(&devpriv->mite_channel_lock, flags);
	if (devpriv->ao_mite_chan) {
		if (boardtype.reg_type & (ni_reg_611x | ni_reg_6713)) {
			FUNC2(devpriv->ao_mite_chan, 32, 32);
		} else {
			/* doing 32 instead of 16 bit wide transfers from memory
			   makes the mite do 32 bit pci transfers, doubling pci bandwidth. */
			FUNC2(devpriv->ao_mite_chan, 16, 32);
		}
		FUNC1(devpriv->ao_mite_chan);
	} else
		retval = -EIO;
	FUNC5(&devpriv->mite_channel_lock, flags);

	return retval;
}