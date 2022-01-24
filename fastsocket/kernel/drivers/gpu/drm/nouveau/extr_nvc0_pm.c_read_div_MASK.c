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
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct nouveau_device*,int) ; 
 int FUNC2 (struct drm_device*,int) ; 

__attribute__((used)) static u32
FUNC3(struct drm_device *dev, int doff, u32 dsrc, u32 dctl)
{
	struct nouveau_device *device = FUNC0(dev);
	u32 ssrc = FUNC1(device, dsrc + (doff * 4));
	u32 sctl = FUNC1(device, dctl + (doff * 4));

	switch (ssrc & 0x00000003) {
	case 0:
		if ((ssrc & 0x00030000) != 0x00030000)
			return 27000;
		return 108000;
	case 2:
		return 100000;
	case 3:
		if (sctl & 0x80000000) {
			u32 sclk = FUNC2(dev, dsrc + (doff * 4));
			u32 sdiv = (sctl & 0x0000003f) + 2;
			return (sclk * 2) / sdiv;
		}

		return FUNC2(dev, dsrc + (doff * 4));
	default:
		return 0;
	}
}