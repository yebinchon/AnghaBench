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
struct comedi_subdevice {int subdev_flags; struct comedi_async* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {unsigned int chanlist_len; } ;
struct comedi_async {TYPE_1__ cmd; } ;
struct TYPE_4__ {scalar_t__* ai_offset; } ;

/* Variables and functions */
 int SDF_LSAMPL ; 
 unsigned int FUNC0 (struct comedi_subdevice*) ; 
 TYPE_2__* devpriv ; 
 short FUNC1 (short) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, struct comedi_subdevice *s,
			void *data, unsigned int num_bytes,
			unsigned int chan_index)
{
	struct comedi_async *async = s->async;
	unsigned int i;
	unsigned int length = num_bytes / FUNC0(s);
	short *array = data;
	unsigned int *larray = data;
	for (i = 0; i < length; i++) {
#ifdef PCIDMA
		if (s->subdev_flags & SDF_LSAMPL)
			larray[i] = le32_to_cpu(larray[i]);
		else
			array[i] = le16_to_cpu(array[i]);
#endif
		if (s->subdev_flags & SDF_LSAMPL)
			larray[i] += devpriv->ai_offset[chan_index];
		else
			array[i] += devpriv->ai_offset[chan_index];
		chan_index++;
		chan_index %= async->cmd.chanlist_len;
	}
}