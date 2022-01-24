#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; scalar_t__ bus_info; scalar_t__ card; scalar_t__ driver; } ;
struct gspca_dev {int /*<<< orphan*/  usb_lock; TYPE_3__* dev; TYPE_1__* sd_desc; int /*<<< orphan*/  present; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_6__ {TYPE_2__ descriptor; int /*<<< orphan*/ * product; } ;
struct TYPE_4__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_VERSION_NUMBER ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct file *file, void  *priv,
			   struct v4l2_capability *cap)
{
	struct gspca_dev *gspca_dev = priv;
	int ret;

	/* protect the access to the usb device */
	if (FUNC1(&gspca_dev->usb_lock))
		return -ERESTARTSYS;
	if (!gspca_dev->present) {
		ret = -ENODEV;
		goto out;
	}
	FUNC4((char *) cap->driver, gspca_dev->sd_desc->name,
			sizeof cap->driver);
	if (gspca_dev->dev->product != NULL) {
		FUNC4((char *) cap->card, gspca_dev->dev->product,
			sizeof cap->card);
	} else {
		FUNC3((char *) cap->card, sizeof cap->card,
			"USB Camera (%04x:%04x)",
			FUNC0(gspca_dev->dev->descriptor.idVendor),
			FUNC0(gspca_dev->dev->descriptor.idProduct));
	}
	FUNC5(gspca_dev->dev, (char *) cap->bus_info,
			sizeof(cap->bus_info));
	cap->version = DRIVER_VERSION_NUMBER;
	cap->capabilities = V4L2_CAP_VIDEO_CAPTURE
			  | V4L2_CAP_STREAMING
			  | V4L2_CAP_READWRITE;
	ret = 0;
out:
	FUNC2(&gspca_dev->usb_lock);
	return ret;
}