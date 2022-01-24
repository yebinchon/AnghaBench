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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int ui_AiActualScan; unsigned int ui_AiScanLength; } ;
struct TYPE_3__ {unsigned int cur_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,short*,unsigned int) ; 
 TYPE_2__* devpriv ; 

void FUNC1(struct comedi_device *dev,
	struct comedi_subdevice *s, short *dma_buffer, unsigned int num_samples)
{
	devpriv->ui_AiActualScan +=
		(s->async->cur_chan + num_samples) / devpriv->ui_AiScanLength;
	s->async->cur_chan += num_samples;
	s->async->cur_chan %= devpriv->ui_AiScanLength;

	FUNC0(s, dma_buffer, num_samples * sizeof(short));
}