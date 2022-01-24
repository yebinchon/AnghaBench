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
struct video_device {int dummy; } ;
struct usb_ov511 {int /*<<< orphan*/  lock; } ;
struct file {struct video_device* private_data; } ;

/* Variables and functions */
 long EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ov51x_v4l1_ioctl_internal ; 
 struct usb_ov511* FUNC2 (struct video_device*) ; 
 int FUNC3 (struct file*,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC4(struct file *file,
		 unsigned int cmd, unsigned long arg)
{
	struct video_device *vdev = file->private_data;
	struct usb_ov511 *ov = FUNC2(vdev);
	int rc;

	if (FUNC0(&ov->lock))
		return -EINTR;

	rc = FUNC3(file, cmd, arg, ov51x_v4l1_ioctl_internal);

	FUNC1(&ov->lock);
	return rc;
}