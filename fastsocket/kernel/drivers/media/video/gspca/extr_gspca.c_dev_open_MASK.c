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
struct TYPE_3__ {int debug; } ;
struct gspca_dev {TYPE_1__ vdev; int /*<<< orphan*/  module; int /*<<< orphan*/  present; } ;
struct file {struct gspca_dev* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int D_V4L2 ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int V4L2_DEBUG_IOCTL ; 
 int V4L2_DEBUG_IOCTL_ARG ; 
 TYPE_2__* current ; 
 int gspca_debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file)
{
	struct gspca_dev *gspca_dev;

	FUNC0(D_STREAM, "[%s] open", current->comm);
	gspca_dev = (struct gspca_dev *) FUNC2(file);
	if (!gspca_dev->present)
		return -ENODEV;

	/* protect the subdriver against rmmod */
	if (!FUNC1(gspca_dev->module))
		return -ENODEV;

	file->private_data = gspca_dev;
#ifdef GSPCA_DEBUG
	/* activate the v4l2 debug */
	if (gspca_debug & D_V4L2)
		gspca_dev->vdev.debug |= V4L2_DEBUG_IOCTL
					| V4L2_DEBUG_IOCTL_ARG;
	else
		gspca_dev->vdev.debug &= ~(V4L2_DEBUG_IOCTL
					| V4L2_DEBUG_IOCTL_ARG);
#endif
	return 0;
}