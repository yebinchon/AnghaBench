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
typedef  int u32 ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nouveau_device*,int) ; 

__attribute__((used)) static u32
FUNC4(struct drm_device *dev)
{
	struct nouveau_device *device = FUNC0(dev);
	struct nouveau_drm *drm = FUNC1(dev);

	switch (FUNC2(drm->device)->chipset) {
	case 0x50: /* it exists, but only has bit 31, not the dividers.. */
	case 0x84:
	case 0x86:
	case 0x98:
	case 0xa0:
		return FUNC3(device, 0x004700);
	case 0x92:
	case 0x94:
	case 0x96:
		return FUNC3(device, 0x004800);
	default:
		return 0x00000000;
	}
}