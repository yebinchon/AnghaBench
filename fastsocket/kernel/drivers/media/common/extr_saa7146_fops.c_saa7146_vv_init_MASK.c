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
struct TYPE_5__ {int /*<<< orphan*/ * cpu_addr; int /*<<< orphan*/  dma_handle; } ;
struct saa7146_vv {TYPE_1__ d_clipping; } ;
struct saa7146_ext_vv {int capabilities; int /*<<< orphan*/ * core_ops; int /*<<< orphan*/  ops; } ;
struct saa7146_dev {int /*<<< orphan*/ * vv_callback; struct saa7146_vv* vv_data; struct saa7146_ext_vv* ext_vv_data; TYPE_4__* pci; int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* init ) (struct saa7146_dev*,struct saa7146_vv*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* init ) (struct saa7146_dev*,struct saa7146_vv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BCS_CTRL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MASK_10 ; 
 int MASK_26 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  SAA7146_CLIPPING_MEM ; 
 int V4L2_CAP_VBI_CAPTURE ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_vv*) ; 
 struct saa7146_vv* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__ saa7146_vbi_uops ; 
 int /*<<< orphan*/  saa7146_video_ioctl_ops ; 
 TYPE_2__ saa7146_video_uops ; 
 int /*<<< orphan*/  FUNC6 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7146_dev*,struct saa7146_vv*) ; 
 int /*<<< orphan*/  FUNC8 (struct saa7146_dev*,struct saa7146_vv*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vv_callback ; 

int FUNC10(struct saa7146_dev* dev, struct saa7146_ext_vv *ext_vv)
{
	struct saa7146_vv *vv;
	int err;

	err = FUNC9(&dev->pci->dev, &dev->v4l2_dev);
	if (err)
		return err;

	vv = FUNC3(sizeof(struct saa7146_vv), GFP_KERNEL);
	if (vv == NULL) {
		FUNC1(("out of memory. aborting.\n"));
		return -ENOMEM;
	}
	ext_vv->ops = saa7146_video_ioctl_ops;
	ext_vv->core_ops = &saa7146_video_ioctl_ops;

	FUNC0(("dev:%p\n",dev));

	/* set default values for video parts of the saa7146 */
	FUNC6(dev, BCS_CTRL, 0x80400040);

	/* enable video-port pins */
	FUNC6(dev, MC1, (MASK_10 | MASK_26));

	/* save per-device extension data (one extension can
	   handle different devices that might need different
	   configuration data) */
	dev->ext_vv_data = ext_vv;

	vv->d_clipping.cpu_addr = FUNC5(dev->pci, SAA7146_CLIPPING_MEM, &vv->d_clipping.dma_handle);
	if( NULL == vv->d_clipping.cpu_addr ) {
		FUNC1(("out of memory. aborting.\n"));
		FUNC2(vv);
		return -1;
	}
	FUNC4(vv->d_clipping.cpu_addr, 0x0, SAA7146_CLIPPING_MEM);

	saa7146_video_uops.init(dev,vv);
	if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
		saa7146_vbi_uops.init(dev,vv);

	dev->vv_data = vv;
	dev->vv_callback = &vv_callback;

	return 0;
}