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
struct vm_area_struct {int dummy; } ;
struct video_device_shadow {scalar_t__ lock; } ;
struct video_device {TYPE_1__* fops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* mmap ) (struct file*,struct vm_area_struct*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct file*,struct vm_area_struct*) ; 
 struct video_device* FUNC3 (struct file*) ; 
 struct video_device_shadow* FUNC4 (struct video_device*) ; 
 scalar_t__ FUNC5 (struct video_device*) ; 

__attribute__((used)) static int FUNC6(struct file *filp, struct vm_area_struct *vm)
{
	struct video_device *vdev = FUNC3(filp);
	struct video_device_shadow *shvdev = FUNC4(vdev);
	int ret = -ENODEV;

	if (!vdev->fops->mmap)
		return ret;
	if (shvdev && shvdev->lock && FUNC0(shvdev->lock))
		return -ERESTARTSYS;
	if (FUNC5(vdev))
		ret = vdev->fops->mmap(filp, vm);
	if (shvdev && shvdev->lock)
		FUNC1(shvdev->lock);
	return ret;
}