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
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_device {int dummy; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV40_PMC_BACKLIGHT ; 
 int NV40_PMC_BACKLIGHT_MASK ; 
 struct nouveau_drm* FUNC0 (struct backlight_device*) ; 
 struct nouveau_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct backlight_device *bd)
{
	struct nouveau_drm *drm = FUNC0(bd);
	struct nouveau_device *device = FUNC1(drm->device);
	int val = (FUNC2(device, NV40_PMC_BACKLIGHT) &
				   NV40_PMC_BACKLIGHT_MASK) >> 16;

	return val;
}