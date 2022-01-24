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
struct omap24xxcam_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mmio_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_SYSCONFIG ; 
 int /*<<< orphan*/  CAM_SYSCONFIG_SOFTRESET ; 
 int /*<<< orphan*/  CAM_SYSSTATUS ; 
 int CAM_SYSSTATUS_RESETDONE ; 
 int RESET_TIMEOUT_NS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct omap24xxcam_device *cam)
{
	int max_loop = RESET_TIMEOUT_NS;

	/* Reset whole camera subsystem */
	FUNC3(cam->mmio_base,
			    CAM_SYSCONFIG,
			    CAM_SYSCONFIG_SOFTRESET);

	/* Wait till it's finished */
	while (!(FUNC2(cam->mmio_base, CAM_SYSSTATUS)
		 & CAM_SYSSTATUS_RESETDONE)
	       && --max_loop) {
		FUNC1(1);
	}

	if (!(FUNC2(cam->mmio_base, CAM_SYSSTATUS)
	      & CAM_SYSSTATUS_RESETDONE))
		FUNC0(cam->dev, "camera soft reset timeout\n");
}