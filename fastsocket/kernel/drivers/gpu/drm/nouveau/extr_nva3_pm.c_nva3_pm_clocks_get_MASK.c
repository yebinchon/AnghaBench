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
struct nouveau_pm_level {void* core; void* copy; void* daemon; void* vdec; void* unka0; void* memory; void* shader; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct drm_device*,int,int) ; 
 void* FUNC1 (struct drm_device*,int,int) ; 

int
FUNC2(struct drm_device *dev, struct nouveau_pm_level *perflvl)
{
	perflvl->core   = FUNC1(dev, 0x00, 0x4200);
	perflvl->shader = FUNC1(dev, 0x01, 0x4220);
	perflvl->memory = FUNC1(dev, 0x02, 0x4000);
	perflvl->unka0  = FUNC0(dev, 0x20, false);
	perflvl->vdec   = FUNC0(dev, 0x21, false);
	perflvl->daemon = FUNC0(dev, 0x25, false);
	perflvl->copy   = perflvl->core;
	return 0;
}