#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_device {int vfl_type; } ;
struct file {struct em28xx_fh* private_data; } ;
struct em28xx_fh {int radio; int type; int /*<<< orphan*/  vb_vbiq; int /*<<< orphan*/  vb_vidq; struct em28xx* dev; } ;
struct em28xx_buffer {int dummy; } ;
struct em28xx {scalar_t__ users; int /*<<< orphan*/  lock; int /*<<< orphan*/  slock; scalar_t__ progressive; int /*<<< orphan*/  v4l2_dev; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_ANALOG_MODE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int V4L2_BUF_TYPE_VBI_CAPTURE ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_FIELD_INTERLACED ; 
 int V4L2_FIELD_NONE ; 
 int V4L2_FIELD_SEQ_TB ; 
#define  VFL_TYPE_GRABBER 130 
#define  VFL_TYPE_RADIO 129 
#define  VFL_TYPE_VBI 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  em28xx_vbi_qops ; 
 int /*<<< orphan*/  em28xx_video_qops ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct em28xx*) ; 
 struct em28xx_fh* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_radio ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * v4l2_type_names ; 
 struct video_device* FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct video_device*) ; 
 struct em28xx* FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,struct em28xx_fh*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct file *filp)
{
	int errCode = 0, radio = 0;
	struct video_device *vdev = FUNC8(filp);
	struct em28xx *dev = FUNC10(filp);
	enum v4l2_buf_type fh_type = 0;
	struct em28xx_fh *fh;
	enum v4l2_field field;

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

	FUNC4("open dev=%s type=%s users=%d\n",
			FUNC9(vdev), v4l2_type_names[fh_type],
			dev->users);


	fh = FUNC6(sizeof(struct em28xx_fh), GFP_KERNEL);
	if (!fh) {
		FUNC0("em28xx-video.c: Out of memory?!\n");
		return -ENOMEM;
	}
	fh->dev = dev;
	fh->radio = radio;
	fh->type = fh_type;
	filp->private_data = fh;

	if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE && dev->users == 0) {
		FUNC3(dev, EM28XX_ANALOG_MODE);
		FUNC2(dev);
		FUNC1(dev);

		/* Needed, since GPIO might have disabled power of
		   some i2c device
		 */
		FUNC5(dev);

	}
	if (fh->radio) {
		FUNC4("video_open: setting radio device\n");
		FUNC7(&dev->v4l2_dev, 0, tuner, s_radio);
	}

	dev->users++;

	if (dev->progressive)
		field = V4L2_FIELD_NONE;
	else
		field = V4L2_FIELD_INTERLACED;

	FUNC11(&fh->vb_vidq, &em28xx_video_qops,
				    NULL, &dev->slock,
				    V4L2_BUF_TYPE_VIDEO_CAPTURE, field,
				    sizeof(struct em28xx_buffer), fh, &dev->lock);

	FUNC11(&fh->vb_vbiq, &em28xx_vbi_qops,
				    NULL, &dev->slock,
				    V4L2_BUF_TYPE_VBI_CAPTURE,
				    V4L2_FIELD_SEQ_TB,
				    sizeof(struct em28xx_buffer), fh, &dev->lock);

	return errCode;
}