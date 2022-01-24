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
typedef  int u32 ;
struct saa7146_vv {int video_status; int /*<<< orphan*/ * ov_suspend; struct saa7146_fh* video_fh; } ;
struct saa7146_format {int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  pixelformat; } ;
struct saa7146_fh {TYPE_1__ video_fmt; struct saa7146_dev* dev; } ;
struct saa7146_dev {int /*<<< orphan*/  slock; struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EBUSY ; 
 int FORMAT_IS_PLANAR ; 
 int MASK_20 ; 
 int MASK_21 ; 
 int MASK_22 ; 
 int /*<<< orphan*/  MASK_27 ; 
 int MASK_28 ; 
 int /*<<< orphan*/  MC1 ; 
 unsigned int RESOURCE_DMA1_HPS ; 
 unsigned int RESOURCE_DMA2_CLP ; 
 unsigned int RESOURCE_DMA3_BRS ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int STATUS_CAPTURE ; 
 struct saa7146_format* FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7146_fh*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct saa7146_fh *fh, struct file *file)
{
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_vv *vv = dev->vv_data;
	struct saa7146_format *fmt = NULL;
	unsigned long flags;
	unsigned int resource;
	u32 dmas = 0;
	FUNC1(("dev:%p, fh:%p\n",dev,fh));

	if ((vv->video_status & STATUS_CAPTURE) != STATUS_CAPTURE) {
		FUNC2(("not capturing.\n"));
		return 0;
	}

	if (vv->video_fh != fh) {
		FUNC2(("capturing, but in another open.\n"));
		return -EBUSY;
	}

	fmt = FUNC4(dev,fh->video_fmt.pixelformat);
	/* we need to have a valid format set here */
	FUNC0(NULL == fmt);

	if (0 != (fmt->flags & FORMAT_IS_PLANAR)) {
		resource = RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP|RESOURCE_DMA3_BRS;
		dmas = MASK_22 | MASK_21 | MASK_20;
	} else {
		resource = RESOURCE_DMA1_HPS;
		dmas = MASK_22;
	}
	FUNC8(&dev->slock,flags);

	/* disable rps0  */
	FUNC7(dev, MC1, MASK_28);

	/* disable rps0 irqs */
	FUNC3(dev, MASK_27);

	/* shut down all used video dma transfers */
	FUNC7(dev, MC1, dmas);

	FUNC9(&dev->slock, flags);

	vv->video_fh = NULL;
	vv->video_status = 0;

	FUNC5(fh, resource);

	if (vv->ov_suspend != NULL) {
		FUNC6(vv->ov_suspend);
		vv->ov_suspend = NULL;
	}

	return 0;
}