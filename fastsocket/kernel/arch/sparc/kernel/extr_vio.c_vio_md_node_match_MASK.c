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
typedef  scalar_t__ u64 ;
struct vio_dev {scalar_t__ mp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct vio_dev* FUNC0 (struct device*) ; 

__attribute__((used)) static int FUNC1(struct device *dev, void *arg)
{
	struct vio_dev *vdev = FUNC0(dev);

	if (vdev->mp == (u64) arg)
		return 1;

	return 0;
}