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
struct TYPE_2__ {int /*<<< orphan*/  dma; } ;
struct omap24xxcam_device {TYPE_1__ sgdma; int /*<<< orphan*/  mmio_base; } ;

/* Variables and functions */
 scalar_t__ CAMMMU_REG_OFFSET ; 
 scalar_t__ CAMMMU_SYSCONFIG ; 
 int /*<<< orphan*/  CAMMMU_SYSCONFIG_AUTOIDLE ; 
 scalar_t__ CAM_SYSCONFIG ; 
 int /*<<< orphan*/  CAM_SYSCONFIG_AUTOIDLE ; 
 int /*<<< orphan*/  FUNC0 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct omap24xxcam_device *cam)
{
	FUNC2(cam);

	/* set the camera subsystem autoidle bit */
	FUNC3(cam->mmio_base, CAM_SYSCONFIG,
			    CAM_SYSCONFIG_AUTOIDLE);

	/* set the camera MMU autoidle bit */
	FUNC3(cam->mmio_base,
			    CAMMMU_REG_OFFSET + CAMMMU_SYSCONFIG,
			    CAMMMU_SYSCONFIG_AUTOIDLE);

	FUNC0(cam);

	FUNC1(&cam->sgdma.dma);
}