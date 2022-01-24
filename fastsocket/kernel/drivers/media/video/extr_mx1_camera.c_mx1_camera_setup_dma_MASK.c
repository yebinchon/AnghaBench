#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct videobuf_buffer {int /*<<< orphan*/  size; } ;
struct mx1_camera_dev {TYPE_1__* res; int /*<<< orphan*/  dma_chan; TYPE_4__* active; TYPE_3__* icd; } ;
struct device {int dummy; } ;
struct TYPE_8__ {struct videobuf_buffer vb; } ;
struct TYPE_6__ {struct device* parent; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;
struct TYPE_5__ {scalar_t__ start; } ;

/* Variables and functions */
 scalar_t__ CSIRXR ; 
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_buffer*) ; 

__attribute__((used)) static int FUNC4(struct mx1_camera_dev *pcdev)
{
	struct videobuf_buffer *vbuf = &pcdev->active->vb;
	struct device *dev = pcdev->icd->dev.parent;
	int ret;

	if (FUNC2(!pcdev->active)) {
		FUNC0(dev, "DMA End IRQ with no active buffer\n");
		return -EFAULT;
	}

	/* setup sg list for future DMA */
	ret = FUNC1(pcdev->dma_chan,
		FUNC3(vbuf),
		vbuf->size, pcdev->res->start +
		CSIRXR, DMA_MODE_READ);
	if (FUNC2(ret))
		FUNC0(dev, "Failed to setup DMA sg list\n");

	return ret;
}