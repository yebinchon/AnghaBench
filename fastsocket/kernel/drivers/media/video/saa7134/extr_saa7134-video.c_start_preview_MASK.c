#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int left; unsigned long top; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_10__ {size_t field; TYPE_1__ w; } ;
struct saa7134_fh {TYPE_5__ win; int /*<<< orphan*/  nclips; int /*<<< orphan*/  clips; } ;
struct TYPE_7__ {unsigned long bytesperline; } ;
struct TYPE_8__ {TYPE_2__ fmt; scalar_t__ base; } ;
struct saa7134_dev {size_t ovfield; int ovenable; TYPE_4__* ovfmt; TYPE_3__ ovbuf; } ;
struct TYPE_9__ {int pm; int depth; scalar_t__ wswap; scalar_t__ bswap; scalar_t__ yuv; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAA7134_OFMT_VIDEO_B ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned long SAA7134_RS_CONTROL_BSWAP ; 
 unsigned long SAA7134_RS_CONTROL_BURST_16 ; 
 unsigned long SAA7134_RS_CONTROL_WSWAP ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TASK_B ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * v4l2_field_names ; 
 int FUNC13 (struct saa7134_dev*,TYPE_5__*) ; 

__attribute__((used)) static int FUNC14(struct saa7134_dev *dev, struct saa7134_fh *fh)
{
	unsigned long base,control,bpl;
	int err;

	err = FUNC13(dev,&fh->win);
	if (0 != err)
		return err;

	dev->ovfield = fh->win.field;
	FUNC6("start_preview %dx%d+%d+%d %s field=%s\n",
		fh->win.w.width,fh->win.w.height,
		fh->win.w.left,fh->win.w.top,
		dev->ovfmt->name,v4l2_field_names[dev->ovfield]);

	/* setup window + clipping */
	FUNC11(dev,TASK_B,fh->win.w.width,fh->win.w.height,
		 FUNC5(dev->ovfield));
	FUNC12(dev,fh->clips,fh->nclips,
		       FUNC5(dev->ovfield));
	if (dev->ovfmt->yuv)
		FUNC8(FUNC0(TASK_B), 0x3f, 0x03);
	else
		FUNC8(FUNC0(TASK_B), 0x3f, 0x01);
	FUNC9(SAA7134_OFMT_VIDEO_B, dev->ovfmt->pm | 0x20);

	/* dma: setup channel 1 (= Video Task B) */
	base  = (unsigned long)dev->ovbuf.base;
	base += dev->ovbuf.fmt.bytesperline * fh->win.w.top;
	base += dev->ovfmt->depth/8         * fh->win.w.left;
	bpl   = dev->ovbuf.fmt.bytesperline;
	control = SAA7134_RS_CONTROL_BURST_16;
	if (dev->ovfmt->bswap)
		control |= SAA7134_RS_CONTROL_BSWAP;
	if (dev->ovfmt->wswap)
		control |= SAA7134_RS_CONTROL_WSWAP;
	if (FUNC5(dev->ovfield)) {
		FUNC10(FUNC1(1),base);
		FUNC10(FUNC2(1),base+bpl);
		FUNC10(FUNC4(1),bpl*2);
		FUNC10(FUNC3(1),control);
	} else {
		FUNC10(FUNC1(1),base);
		FUNC10(FUNC2(1),base);
		FUNC10(FUNC4(1),bpl);
		FUNC10(FUNC3(1),control);
	}

	/* start dma */
	dev->ovenable = 1;
	FUNC7(dev);

	return 0;
}