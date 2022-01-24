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
struct au0828_dev {scalar_t__ vbi_dev; scalar_t__ vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  au0828_sysfs_lock ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct au0828_dev *dev)
{
	FUNC0(1, "au0828_release_resources called\n");
	FUNC1(&au0828_sysfs_lock);

	if (dev->vdev)
		FUNC3(dev->vdev);
	if (dev->vbi_dev)
		FUNC3(dev->vbi_dev);

	FUNC2(&au0828_sysfs_lock);
}