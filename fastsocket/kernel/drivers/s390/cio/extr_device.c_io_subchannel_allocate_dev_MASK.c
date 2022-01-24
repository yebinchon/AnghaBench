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
struct subchannel {int dummy; } ;
struct ccw_device_private {int dummy; } ;
struct ccw_device {void* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ccw_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 void* FUNC2 (int,int) ; 

__attribute__((used)) static struct ccw_device * FUNC3(struct subchannel *sch)
{
	struct ccw_device *cdev;

	cdev  = FUNC2(sizeof(*cdev), GFP_KERNEL);
	if (cdev) {
		cdev->private = FUNC2(sizeof(struct ccw_device_private),
					GFP_KERNEL | GFP_DMA);
		if (cdev->private)
			return cdev;
	}
	FUNC1(cdev);
	return FUNC0(-ENOMEM);
}