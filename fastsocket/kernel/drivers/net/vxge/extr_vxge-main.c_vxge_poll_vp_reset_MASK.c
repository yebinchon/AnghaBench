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
struct TYPE_2__ {scalar_t__ intr_type; } ;
struct vxgedev {int no_of_vpath; int /*<<< orphan*/  vp_reset_timer; int /*<<< orphan*/  devh; TYPE_1__ config; int /*<<< orphan*/  vp_reset; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ MSI_X ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vxgedev*,int) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct vxgedev *vdev = (struct vxgedev *)data;
	int i, j = 0;

	for (i = 0; i < vdev->no_of_vpath; i++) {
		if (FUNC1(i, &vdev->vp_reset)) {
			FUNC4(vdev, i);
			j++;
		}
	}
	if (j && (vdev->config.intr_type != MSI_X)) {
		FUNC3(vdev->devh);
		FUNC2(vdev->devh);
	}

	FUNC0(&vdev->vp_reset_timer, jiffies + HZ / 2);
}