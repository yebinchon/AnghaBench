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
struct video_device {int vfl_type; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int radio; int type; int /*<<< orphan*/  vb_vidq; struct cx231xx* dev; } ;
struct cx231xx_buffer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  slock; } ;
struct TYPE_3__ {int /*<<< orphan*/  slock; } ;
struct cx231xx {scalar_t__ users; scalar_t__ model; int video_input; int /*<<< orphan*/  lock; TYPE_2__ vbi_mode; TYPE_1__ video_mode; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int /*<<< orphan*/  CX231XX_ANALOG_MODE ; 
 scalar_t__ CX231XX_BOARD_CNXT_VIDEO_GRABBER ; 
 scalar_t__ CX231XX_BOARD_HAUPPAUGE_USBLIVE2 ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INDEX_VANC ; 
 int /*<<< orphan*/  POLARIS_AVMODE_ANALOGT_TV ; 
 int /*<<< orphan*/  POLARIS_AVMODE_ENXTERNAL_AV ; 
 int V4L2_BUF_TYPE_VBI_CAPTURE ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  V4L2_FIELD_SEQ_TB ; 
#define  VFL_TYPE_GRABBER 130 
#define  VFL_TYPE_RADIO 129 
#define  VFL_TYPE_VBI 128 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cx231xx*) ; 
 int /*<<< orphan*/  cx231xx_vbi_qops ; 
 int /*<<< orphan*/  cx231xx_video_qops ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 struct cx231xx_fh* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC10 (struct cx231xx*) ; 
 int /*<<< orphan*/  s_radio ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/ * v4l2_type_names ; 
 struct video_device* FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (struct video_device*) ; 
 struct cx231xx* FUNC13 (struct file*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,struct cx231xx_fh*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct file *filp)
{
	int errCode = 0, radio = 0;
	struct video_device *vdev = FUNC11(filp);
	struct cx231xx *dev = FUNC13(filp);
	struct cx231xx_fh *fh;
	enum v4l2_buf_type fh_type = 0;

	switch (vdev->vfl_type) {
	case VFL_TYPE_GRABBER:
		fh_type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
		break;
	case VFL_TYPE_VBI:
		fh_type = V4L2_BUF_TYPE_VBI_CAPTURE;
		break;
	case VFL_TYPE_RADIO:
		radio = 1;
		break;
	}

	FUNC7("open dev=%s type=%s users=%d\n",
			 FUNC12(vdev), v4l2_type_names[fh_type],
			 dev->users);

#if 0
	errCode = cx231xx_set_mode(dev, CX231XX_ANALOG_MODE);
	if (errCode < 0) {
		cx231xx_errdev
		    ("Device locked on digital mode. Can't open analog\n");
		return -EBUSY;
	}
#endif

	fh = FUNC8(sizeof(struct cx231xx_fh), GFP_KERNEL);
	if (!fh) {
		FUNC2("cx231xx-video.c: Out of memory?!\n");
		return -ENOMEM;
	}
	fh->dev = dev;
	fh->radio = radio;
	fh->type = fh_type;
	filp->private_data = fh;

	if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE && dev->users == 0) {
		dev->width = FUNC10(dev);
		dev->height = FUNC9(dev);

		/* Power up in Analog TV mode */
		if (dev->model == CX231XX_BOARD_CNXT_VIDEO_GRABBER ||
		    dev->model == CX231XX_BOARD_HAUPPAUGE_USBLIVE2)
			FUNC5(dev,
				 POLARIS_AVMODE_ENXTERNAL_AV);
		else
			FUNC5(dev, POLARIS_AVMODE_ANALOGT_TV);

#if 0
		cx231xx_set_mode(dev, CX231XX_ANALOG_MODE);
#endif

		/* set video alternate setting */
		FUNC6(dev);

		/* Needed, since GPIO might have disabled power of
		   some i2c device */
		FUNC1(dev);

		/* device needs to be initialized before isoc transfer */
		dev->video_input = dev->video_input > 2 ? 2 : dev->video_input;

	}
	if (fh->radio) {
		FUNC7("video_open: setting radio device\n");

		/* cx231xx_start_radio(dev); */

		FUNC0(dev, tuner, s_radio);
	}

	dev->users++;

	if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		FUNC14(&fh->vb_vidq, &cx231xx_video_qops,
					    NULL, &dev->video_mode.slock,
					    fh->type, V4L2_FIELD_INTERLACED,
					    sizeof(struct cx231xx_buffer),
					    fh, &dev->lock);
	if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
		/* Set the required alternate setting  VBI interface works in
		   Bulk mode only */
		if (dev->model != CX231XX_BOARD_CNXT_VIDEO_GRABBER &&
		    dev->model != CX231XX_BOARD_HAUPPAUGE_USBLIVE2)
			FUNC3(dev, INDEX_VANC, 0);

		FUNC14(&fh->vb_vidq, &cx231xx_vbi_qops,
					    NULL, &dev->vbi_mode.slock,
					    fh->type, V4L2_FIELD_SEQ_TB,
					    sizeof(struct cx231xx_buffer),
					    fh, &dev->lock);
	}

	return errCode;
}