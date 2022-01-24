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
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* poll ) (struct file*,struct poll_table_struct*) ;} ;

/* Variables and functions */
 unsigned int DEFAULT_POLLMASK ; 
 int POLLERR ; 
 int POLLHUP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct file*,struct poll_table_struct*) ; 
 struct video_device* FUNC3 (struct file*) ; 
 struct video_device_shadow* FUNC4 (struct video_device*) ; 
 scalar_t__ FUNC5 (struct video_device*) ; 

__attribute__((used)) static unsigned int FUNC6(struct file *filp, struct poll_table_struct *poll)
{
	struct video_device *vdev = FUNC3(filp);
	struct video_device_shadow *shvdev = FUNC4(vdev);
	int ret = POLLERR | POLLHUP;

	if (!vdev->fops->poll)
		return DEFAULT_POLLMASK;
	if (shvdev && shvdev->lock)
		FUNC0(shvdev->lock);
	if (FUNC5(vdev))
		ret = vdev->fops->poll(filp, poll);
	if (shvdev && shvdev->lock)
		FUNC1(shvdev->lock);
	return ret;
}