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
struct video_device_shadow {scalar_t__ lock; } ;
struct video_device {TYPE_1__* fops; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct file*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct video_device* FUNC3 (struct file*) ; 
 struct video_device_shadow* FUNC4 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct video_device*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	struct video_device *vdev = FUNC3(filp);
	struct video_device_shadow *shvdev = FUNC4(vdev);
	int ret = 0;

	if (vdev->fops->release) {
		if (shvdev && shvdev->lock)
			FUNC0(shvdev->lock);
		vdev->fops->release(filp);
		if (shvdev && shvdev->lock)
			FUNC1(shvdev->lock);
	}

	/* decrease the refcount unconditionally since the release()
	   return value is ignored. */
	FUNC5(vdev);
	return ret;
}