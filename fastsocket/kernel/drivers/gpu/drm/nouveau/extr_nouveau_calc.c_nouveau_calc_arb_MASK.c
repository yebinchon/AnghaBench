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
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int pci_device; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 scalar_t__ NV_20 ; 
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct drm_device *dev, int vclk, int bpp, int *burst, int *lwm)
{
	struct nouveau_drm *drm = FUNC0(dev);

	if (FUNC3(drm->device)->card_type < NV_20)
		FUNC1(dev, vclk, bpp, burst, lwm);
	else if ((dev->pci_device & 0xfff0) == 0x0240 /*CHIPSET_C51*/ ||
		 (dev->pci_device & 0xfff0) == 0x03d0 /*CHIPSET_C512*/) {
		*burst = 128;
		*lwm = 0x0480;
	} else
		FUNC2(burst, lwm);
}