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
struct video_device {scalar_t__ vfl_type; } ;
struct saa7146_fh {int type; struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_3__* ext; TYPE_2__* ext_vv_data; } ;
struct file {struct saa7146_fh* private_data; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_10__ {int (* open ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_9__ {int (* open ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  module; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* open ) (struct file*) ;} ;
struct TYPE_7__ {int capabilities; TYPE_1__ vbi_fops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_CAP_VBI_CAPTURE ; 
 scalar_t__ VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_fh*) ; 
 struct saa7146_fh* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  saa7146_devices_lock ; 
 TYPE_5__ saa7146_vbi_uops ; 
 TYPE_4__ saa7146_video_uops ; 
 int FUNC7 (struct saa7146_dev*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 int FUNC9 (struct saa7146_dev*,struct file*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (struct video_device*) ; 
 struct saa7146_dev* FUNC13 (struct file*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct video_device *vdev = FUNC11(file);
	struct saa7146_dev *dev = FUNC13(file);
	struct saa7146_fh *fh = NULL;
	int result = 0;

	enum v4l2_buf_type type;

	FUNC1(("file:%p, dev:%s\n", file, FUNC12(vdev)));

	if (FUNC5(&saa7146_devices_lock))
		return -ERESTARTSYS;

	FUNC0(("using: %p\n",dev));

	type = vdev->vfl_type == VFL_TYPE_GRABBER
	     ? V4L2_BUF_TYPE_VIDEO_CAPTURE
	     : V4L2_BUF_TYPE_VBI_CAPTURE;

	/* check if an extension is registered */
	if( NULL == dev->ext ) {
		FUNC2(("no extension registered for this device.\n"));
		result = -ENODEV;
		goto out;
	}

	/* allocate per open data */
	fh = FUNC4(sizeof(*fh),GFP_KERNEL);
	if (NULL == fh) {
		FUNC2(("cannot allocate memory for per open data.\n"));
		result = -ENOMEM;
		goto out;
	}

	file->private_data = fh;
	fh->dev = dev;
	fh->type = type;

	if( fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
		FUNC2(("initializing vbi...\n"));
		if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
			result = saa7146_vbi_uops.open(dev,file);
		if (dev->ext_vv_data->vbi_fops.open)
			dev->ext_vv_data->vbi_fops.open(file);
	} else {
		FUNC2(("initializing video...\n"));
		result = saa7146_video_uops.open(dev,file);
	}

	if (0 != result) {
		goto out;
	}

	if( 0 == FUNC10(dev->ext->module)) {
		result = -EINVAL;
		goto out;
	}

	result = 0;
out:
	if (fh && result != 0) {
		FUNC3(fh);
		file->private_data = NULL;
	}
	FUNC6(&saa7146_devices_lock);
	return result;
}