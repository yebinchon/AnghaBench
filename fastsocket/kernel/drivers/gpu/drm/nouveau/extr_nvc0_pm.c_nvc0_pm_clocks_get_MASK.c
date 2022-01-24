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
struct nouveau_pm_level {int shader; int core; void* vdec; void* daemon; void* copy; void* hub01; void* hub06; void* hub07; void* rop; int /*<<< orphan*/  memory; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 

int
FUNC2(struct drm_device *dev, struct nouveau_pm_level *perflvl)
{
	perflvl->shader = FUNC0(dev, 0x00);
	perflvl->core   = perflvl->shader / 2;
	perflvl->memory = FUNC1(dev);
	perflvl->rop    = FUNC0(dev, 0x01);
	perflvl->hub07  = FUNC0(dev, 0x02);
	perflvl->hub06  = FUNC0(dev, 0x07);
	perflvl->hub01  = FUNC0(dev, 0x08);
	perflvl->copy   = FUNC0(dev, 0x09);
	perflvl->daemon = FUNC0(dev, 0x0c);
	perflvl->vdec   = FUNC0(dev, 0x0e);
	return 0;
}