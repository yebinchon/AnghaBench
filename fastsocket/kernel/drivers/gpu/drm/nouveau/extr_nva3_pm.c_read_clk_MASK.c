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
struct nouveau_device {int crystal; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nouveau_device*,int) ; 
 int FUNC4 (struct drm_device*,int) ; 

__attribute__((used)) static u32
FUNC5(struct drm_device *dev, int clk, bool ignore_en)
{
	struct nouveau_device *device = FUNC0(dev);
	struct nouveau_drm *drm = FUNC1(dev);
	u32 sctl, sdiv, sclk;

	/* refclk for the 0xe8xx plls is a fixed frequency */
	if (clk >= 0x40) {
		if (FUNC2(drm->device)->chipset == 0xaf) {
			/* no joke.. seriously.. sigh.. */
			return FUNC3(device, 0x00471c) * 1000;
		}

		return device->crystal;
	}

	sctl = FUNC3(device, 0x4120 + (clk * 4));
	if (!ignore_en && !(sctl & 0x00000100))
		return 0;

	switch (sctl & 0x00003000) {
	case 0x00000000:
		return device->crystal;
	case 0x00002000:
		if (sctl & 0x00000040)
			return 108000;
		return 100000;
	case 0x00003000:
		sclk = FUNC4(dev, clk);
		sdiv = ((sctl & 0x003f0000) >> 16) + 2;
		return (sclk * 2) / sdiv;
	default:
		return 0;
	}
}