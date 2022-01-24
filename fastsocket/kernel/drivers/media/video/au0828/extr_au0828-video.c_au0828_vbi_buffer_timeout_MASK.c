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
struct TYPE_3__ {struct au0828_buffer* vbi_buf; } ;
struct au0828_dev {int vbi_timeout_running; int /*<<< orphan*/  slock; int /*<<< orphan*/  vbi_timeout; TYPE_1__ isoc_ctl; struct au0828_dmaqueue vbiq; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct au0828_buffer {TYPE_2__ vb; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct au0828_dev*,struct au0828_dmaqueue*,struct au0828_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct au0828_dmaqueue*,struct au0828_buffer**) ; 
 unsigned char* FUNC6 (TYPE_2__*) ; 

void FUNC7(unsigned long data)
{
	struct au0828_dev *dev = (struct au0828_dev *) data;
	struct au0828_dmaqueue *dma_q = &dev->vbiq;
	struct au0828_buffer *buf;
	unsigned char *vbi_data;
	unsigned long flags = 0;

	FUNC2(&dev->slock, flags);

	buf = dev->isoc_ctl.vbi_buf;
	if (buf != NULL) {
		vbi_data = FUNC6(&buf->vb);
		FUNC0(vbi_data, 0x00, buf->vb.size);
		FUNC4(dev, dma_q, buf);
	}
	FUNC5(dma_q, &buf);

	if (dev->vbi_timeout_running == 1)
		FUNC1(&dev->vbi_timeout, jiffies + (HZ / 10));
	FUNC3(&dev->slock, flags);
}