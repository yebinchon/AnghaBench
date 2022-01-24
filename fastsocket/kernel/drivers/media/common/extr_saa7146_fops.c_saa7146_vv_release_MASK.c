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
struct TYPE_2__ {int /*<<< orphan*/  dma_handle; int /*<<< orphan*/  cpu_addr; } ;
struct saa7146_vv {TYPE_1__ d_clipping; } ;
struct saa7146_dev {int /*<<< orphan*/ * vv_callback; struct saa7146_vv* vv_data; int /*<<< orphan*/  pci; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SAA7146_CLIPPING_MEM ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_vv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct saa7146_dev* dev)
{
	struct saa7146_vv *vv = dev->vv_data;

	FUNC0(("dev:%p\n",dev));

	FUNC3(&dev->v4l2_dev);
	FUNC2(dev->pci, SAA7146_CLIPPING_MEM, vv->d_clipping.cpu_addr, vv->d_clipping.dma_handle);
	FUNC1(vv);
	dev->vv_data = NULL;
	dev->vv_callback = NULL;

	return 0;
}