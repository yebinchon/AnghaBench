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
struct au0828_dmaqueue {int dummy; } ;
struct TYPE_3__ {struct au0828_buffer* buf; } ;
struct au0828_dev {int vid_timeout_running; int /*<<< orphan*/  slock; int /*<<< orphan*/  vid_timeout; TYPE_1__ isoc_ctl; struct au0828_dmaqueue vidq; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct au0828_buffer {TYPE_2__ vb; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*,struct au0828_dmaqueue*,struct au0828_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct au0828_dmaqueue*,struct au0828_buffer**) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char* FUNC6 (TYPE_2__*) ; 

void FUNC7(unsigned long data)
{
	struct au0828_dev *dev = (struct au0828_dev *) data;
	struct au0828_dmaqueue *dma_q = &dev->vidq;
	struct au0828_buffer *buf;
	unsigned char *vid_data;
	unsigned long flags = 0;

	FUNC4(&dev->slock, flags);

	buf = dev->isoc_ctl.buf;
	if (buf != NULL) {
		vid_data = FUNC6(&buf->vb);
		FUNC2(vid_data, 0x00, buf->vb.size); /* Blank green frame */
		FUNC0(dev, dma_q, buf);
	}
	FUNC1(dma_q, &buf);

	if (dev->vid_timeout_running == 1)
		FUNC3(&dev->vid_timeout, jiffies + (HZ / 10));

	FUNC5(&dev->slock, flags);
}