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
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct TYPE_4__ {unsigned int* hwdmasize; unsigned int ai_poll_ptr; size_t next_dma_buf; scalar_t__* dmabuf; int /*<<< orphan*/  dma; } ;
struct TYPE_3__ {int buf_write_count; int buf_read_count; } ;

/* Variables and functions */
 TYPE_2__* devpriv ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*,short*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s)
{
	unsigned long flags;
	unsigned int top1, top2, i;

	if (!devpriv->dma)
		return 0;	/*  poll is valid only for DMA transfer */

	FUNC1(&dev->spinlock, flags);

	for (i = 0; i < 20; i++) {
		top1 = FUNC0(devpriv->dma);	/*  where is now DMA */
		top2 = FUNC0(devpriv->dma);
		if (top1 == top2)
			break;
	}
	if (top1 != top2) {
		FUNC2(&dev->spinlock, flags);
		return 0;
	}

	top1 = devpriv->hwdmasize[0] - top1;	/*  where is now DMA in buffer */
	top1 >>= 1;		/*  sample position */
	top2 = top1 - devpriv->ai_poll_ptr;
	if (top2 < 1) {		/*  no new samples */
		FUNC2(&dev->spinlock, flags);
		return 0;
	}

	FUNC3(dev, s,
			      (short *)devpriv->dmabuf[devpriv->next_dma_buf],
			      devpriv->ai_poll_ptr, top2);

	devpriv->ai_poll_ptr = top1;	/*  new buffer position */
	FUNC2(&dev->spinlock, flags);

	return s->async->buf_write_count - s->async->buf_read_count;
}