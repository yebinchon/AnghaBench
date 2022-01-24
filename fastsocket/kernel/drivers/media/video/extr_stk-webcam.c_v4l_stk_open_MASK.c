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
struct stk_camera {int /*<<< orphan*/  interface; } ;
struct file {struct stk_camera* private_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct stk_camera* FUNC2 (struct video_device*) ; 
 struct video_device* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *fp)
{
	struct stk_camera *dev;
	struct video_device *vdev;

	vdev = FUNC3(fp);
	dev = FUNC2(vdev);

	if (dev == NULL || !FUNC0(dev)) {
		return -ENXIO;
	}
	fp->private_data = dev;
	FUNC1(dev->interface);

	return 0;
}