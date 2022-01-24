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
struct v4l2_jpegcompression {int dummy; } ;
struct gspca_dev {int /*<<< orphan*/  usb_lock; TYPE_1__* sd_desc; scalar_t__ present; scalar_t__ usb_err; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* set_jcomp ) (struct gspca_dev*,struct v4l2_jpegcompression*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct gspca_dev*,struct v4l2_jpegcompression*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			struct v4l2_jpegcompression *jpegcomp)
{
	struct gspca_dev *gspca_dev = priv;
	int ret;

	if (!gspca_dev->sd_desc->set_jcomp)
		return -EINVAL;
	if (FUNC0(&gspca_dev->usb_lock))
		return -ERESTARTSYS;
	gspca_dev->usb_err = 0;
	if (gspca_dev->present)
		ret = gspca_dev->sd_desc->set_jcomp(gspca_dev, jpegcomp);
	else
		ret = -ENODEV;
	FUNC1(&gspca_dev->usb_lock);
	return ret;
}