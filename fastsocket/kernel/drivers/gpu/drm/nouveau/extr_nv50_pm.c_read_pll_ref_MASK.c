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
struct nouveau_drm {int dummy; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int) ; 
 int /*<<< orphan*/  clk_src_crystal ; 
 int /*<<< orphan*/  clk_src_href ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct nouveau_device*,int) ; 
 int FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_device*,int) ; 

__attribute__((used)) static u32
FUNC6(struct drm_device *dev, u32 base)
{
	struct nouveau_device *device = FUNC1(dev);
	struct nouveau_drm *drm = FUNC2(dev);
	u32 src, mast = FUNC3(device, 0x00c040);

	switch (base) {
	case 0x004028:
		src = !!(mast & 0x00200000);
		break;
	case 0x004020:
		src = !!(mast & 0x00400000);
		break;
	case 0x004008:
		src = !!(mast & 0x00010000);
		break;
	case 0x004030:
		src = !!(mast & 0x02000000);
		break;
	case 0x00e810:
		return FUNC4(dev, clk_src_crystal);
	default:
		FUNC0(drm, "bad pll 0x%06x\n", base);
		return 0;
	}

	if (src)
		return FUNC4(dev, clk_src_href);
	return FUNC5(dev, base);
}