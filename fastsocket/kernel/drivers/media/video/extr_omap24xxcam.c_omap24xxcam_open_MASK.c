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
struct videobuf_buffer {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct omap24xxcam_fh {int /*<<< orphan*/  vbq_lock; int /*<<< orphan*/  vbq; int /*<<< orphan*/  pix; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {TYPE_3__* sdev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  users; TYPE_1__* vfd; } ;
struct file {struct omap24xxcam_fh* private_data; } ;
struct TYPE_10__ {struct omap24xxcam_device* priv; } ;
struct TYPE_9__ {int minor; } ;
struct TYPE_8__ {int /*<<< orphan*/  module; } ;
struct TYPE_6__ {int minor; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct omap24xxcam_fh*) ; 
 struct omap24xxcam_fh* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_5__ omap24xxcam ; 
 int /*<<< orphan*/  FUNC6 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap24xxcam_device*) ; 
 scalar_t__ FUNC8 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  omap24xxcam_vbq_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct omap24xxcam_fh*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	int minor = FUNC11(file)->minor;
	struct omap24xxcam_device *cam = omap24xxcam.priv;
	struct omap24xxcam_fh *fh;
	struct v4l2_format format;

	if (!cam || !cam->vfd || (cam->vfd->minor != minor))
		return -ENODEV;

	fh = FUNC2(sizeof(*fh), GFP_KERNEL);
	if (fh == NULL)
		return -ENOMEM;

	FUNC4(&cam->mutex);
	if (cam->sdev == NULL || !FUNC10(cam->sdev->module)) {
		FUNC5(&cam->mutex);
		goto out_try_module_get;
	}

	if (FUNC0(&cam->users) == 1) {
		FUNC6(cam);
		if (FUNC8(cam)) {
			FUNC5(&cam->mutex);
			goto out_omap24xxcam_sensor_enable;
		}
	}
	FUNC5(&cam->mutex);

	fh->cam = cam;
	FUNC4(&cam->mutex);
	FUNC13(cam->sdev, &format);
	FUNC5(&cam->mutex);
	/* FIXME: how about fh->pix when there are more users? */
	fh->pix = format.fmt.pix;

	file->private_data = fh;

	FUNC9(&fh->vbq_lock);

	FUNC12(&fh->vbq, &omap24xxcam_vbq_ops, NULL,
				&fh->vbq_lock, V4L2_BUF_TYPE_VIDEO_CAPTURE,
				V4L2_FIELD_NONE,
				sizeof(struct videobuf_buffer), fh);

	return 0;

out_omap24xxcam_sensor_enable:
	FUNC7(cam);
	FUNC3(cam->sdev->module);

out_try_module_get:
	FUNC1(fh);

	return -ENODEV;
}