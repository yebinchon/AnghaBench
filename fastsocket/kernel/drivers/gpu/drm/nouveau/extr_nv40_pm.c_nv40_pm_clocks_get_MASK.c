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
typedef  int u32 ;
struct nouveau_pm_level {int /*<<< orphan*/  memory; void* shader; void* core; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct nouveau_device*,int) ; 
 void* FUNC2 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 

int
FUNC4(struct drm_device *dev, struct nouveau_pm_level *perflvl)
{
	struct nouveau_device *device = FUNC0(dev);
	u32 ctrl = FUNC1(device, 0x00c040);

	perflvl->core   = FUNC2(dev, (ctrl & 0x00000003) >> 0);
	perflvl->shader = FUNC2(dev, (ctrl & 0x00000030) >> 4);
	perflvl->memory = FUNC3(dev, 0x4020);
	return 0;
}