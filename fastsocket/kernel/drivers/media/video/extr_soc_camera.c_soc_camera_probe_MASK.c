#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct video_device_shadow {int /*<<< orphan*/ * lock; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct soc_camera_link {int (* add_device ) (struct soc_camera_link*,TYPE_3__*) ;int /*<<< orphan*/  regulators; int /*<<< orphan*/  num_regulators; int /*<<< orphan*/  (* del_device ) (struct soc_camera_link*) ;scalar_t__ board_info; scalar_t__ module_name; int /*<<< orphan*/  (* reset ) (int /*<<< orphan*/ ) ;} ;
struct soc_camera_host {TYPE_2__* ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct soc_camera_device {int /*<<< orphan*/  vdev; int /*<<< orphan*/  video_lock; TYPE_3__ dev; int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  user_height; int /*<<< orphan*/  user_width; int /*<<< orphan*/  pdev; } ;
struct device {TYPE_1__* driver; int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {int (* add ) (struct soc_camera_device*) ;int /*<<< orphan*/  (* remove ) (struct soc_camera_device*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_FIELD_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  g_mbus_fmt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct soc_camera_device*) ; 
 int FUNC12 (struct soc_camera_device*,struct soc_camera_link*) ; 
 int FUNC13 (struct soc_camera_device*) ; 
 int FUNC14 (struct soc_camera_device*,struct soc_camera_link*,int) ; 
 struct v4l2_subdev* FUNC15 (struct soc_camera_device*) ; 
 int FUNC16 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct soc_camera_device*) ; 
 int FUNC19 (struct soc_camera_link*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (struct soc_camera_link*) ; 
 int /*<<< orphan*/  FUNC21 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct soc_camera_link*) ; 
 int /*<<< orphan*/  FUNC23 (struct soc_camera_device*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct device* FUNC25 (struct soc_camera_device*) ; 
 struct soc_camera_device* FUNC26 (struct device*) ; 
 struct soc_camera_host* FUNC27 (int /*<<< orphan*/ ) ; 
 struct soc_camera_link* FUNC28 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  video ; 
 int FUNC31 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 struct video_device_shadow* FUNC33 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC34(struct device *dev)
{
	struct soc_camera_device *icd = FUNC26(dev);
	struct soc_camera_host *ici = FUNC27(dev->parent);
	struct soc_camera_link *icl = FUNC28(icd);
	struct device *control = NULL;
	struct v4l2_subdev *sd;
	struct v4l2_mbus_framefmt mf;
	struct video_device_shadow *shvdev;
	int ret;

	FUNC1(dev, "Probing %s\n", FUNC2(dev));

	ret = FUNC8(icd->pdev, icl->num_regulators,
				 icl->regulators);
	if (ret < 0)
		goto ereg;

	ret = FUNC14(icd, icl, 1);
	if (ret < 0)
		goto epower;

	/* The camera could have been already on, try to reset */
	if (icl->reset)
		icl->reset(icd->pdev);

	ret = ici->ops->add(icd);
	if (ret < 0)
		goto eadd;

	/* Must have icd->vdev before registering the device */
	ret = FUNC31(icd);
	if (ret < 0)
		goto evdc;

	/* Non-i2c cameras, e.g., soc_camera_platform, have no board_info */
	if (icl->board_info) {
		ret = FUNC12(icd, icl);
		if (ret < 0)
			goto eadddev;
	} else if (!icl->add_device || !icl->del_device) {
		ret = -EINVAL;
		goto eadddev;
	} else {
		if (icl->module_name)
			ret = FUNC9(icl->module_name);

		ret = icl->add_device(icl, &icd->dev);
		if (ret < 0)
			goto eadddev;

		/*
		 * FIXME: this is racy, have to use driver-binding notification,
		 * when it is available
		 */
		control = FUNC25(icd);
		if (!control || !control->driver || !FUNC0(control) ||
		    !FUNC29(control->driver->owner)) {
			icl->del_device(icl);
			goto enodrv;
		}
	}

	/* At this point client .probe() should have run already */
	ret = FUNC13(icd);
	if (ret < 0)
		goto eiufmt;

	icd->field = V4L2_FIELD_ANY;

	shvdev = FUNC33(icd->vdev);
	shvdev->lock = &icd->video_lock;

	/*
	 * ..._video_start() will create a device node, video_register_device()
	 * itself is protected against concurrent open() calls, but we also have
	 * to protect our data.
	 */
	FUNC5(&icd->video_lock);

	ret = FUNC16(icd);
	if (ret < 0)
		goto evidstart;

	/* Try to improve our guess of a reasonable window format */
	sd = FUNC15(icd);
	if (!FUNC30(sd, video, g_mbus_fmt, &mf)) {
		icd->user_width		= mf.width;
		icd->user_height	= mf.height;
		icd->colorspace		= mf.colorspace;
		icd->field		= mf.field;
	}

	/* Do we have to sysfs_remove_link() before device_unregister()? */
	if (FUNC24(&icd->dev.kobj, &FUNC25(icd)->kobj,
			      "control"))
		FUNC3(&icd->dev, "Failed creating the control symlink\n");

	ici->ops->remove(icd);

	FUNC14(icd, icl, 0);

	FUNC6(&icd->video_lock);

	return 0;

evidstart:
	FUNC6(&icd->video_lock);
	FUNC11(icd);
eiufmt:
	if (icl->board_info) {
		FUNC10(icd);
	} else {
		icl->del_device(icl);
		FUNC4(control->driver->owner);
	}
enodrv:
eadddev:
	FUNC32(icd->vdev);
evdc:
	ici->ops->remove(icd);
eadd:
	FUNC14(icd, icl, 0);
epower:
	FUNC7(icl->num_regulators, icl->regulators);
ereg:
	return ret;
}