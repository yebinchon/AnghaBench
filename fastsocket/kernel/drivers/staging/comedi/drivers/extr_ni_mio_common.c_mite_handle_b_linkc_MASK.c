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
struct mite_struct {int dummy; } ;
struct comedi_subdevice {int /*<<< orphan*/  async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int /*<<< orphan*/  mite_channel_lock; scalar_t__ ao_mite_chan; } ;

/* Variables and functions */
 int NI_AO_SUBDEV ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct mite_struct *mite,
				struct comedi_device *dev)
{
	struct comedi_subdevice *s = dev->subdevices + NI_AO_SUBDEV;
	unsigned long flags;

	FUNC1(&devpriv->mite_channel_lock, flags);
	if (devpriv->ao_mite_chan) {
		FUNC0(devpriv->ao_mite_chan, s->async);
	}
	FUNC2(&devpriv->mite_channel_lock, flags);
}