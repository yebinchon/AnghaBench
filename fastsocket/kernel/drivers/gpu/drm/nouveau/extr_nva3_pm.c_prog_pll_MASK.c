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
struct creg {int clk; int /*<<< orphan*/  pll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int) ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_device*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_device*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_device*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(struct drm_device *dev, int clk, u32 pll, struct creg *reg)
{
	struct nouveau_device *device = FUNC1(dev);
	struct nouveau_drm *drm = FUNC2(dev);
	const u32 src0 = 0x004120 + (clk * 4);
	const u32 src1 = 0x004160 + (clk * 4);
	const u32 ctrl = pll + 0;
	const u32 coef = pll + 4;

	if (!reg->clk && !reg->pll) {
		FUNC0(drm, "no clock for %02x\n", clk);
		return;
	}

	if (reg->pll) {
		FUNC3(device, src0, 0x00000101, 0x00000101);
		FUNC5(device, coef, reg->pll);
		FUNC3(device, ctrl, 0x00000015, 0x00000015);
		FUNC3(device, ctrl, 0x00000010, 0x00000000);
		FUNC4(device, ctrl, 0x00020000, 0x00020000);
		FUNC3(device, ctrl, 0x00000010, 0x00000010);
		FUNC3(device, ctrl, 0x00000008, 0x00000000);
		FUNC3(device, src1, 0x00000100, 0x00000000);
		FUNC3(device, src1, 0x00000001, 0x00000000);
	} else {
		FUNC3(device, src1, 0x003f3141, 0x00000101 | reg->clk);
		FUNC3(device, ctrl, 0x00000018, 0x00000018);
		FUNC6(20);
		FUNC3(device, ctrl, 0x00000001, 0x00000000);
		FUNC3(device, src0, 0x00000100, 0x00000000);
		FUNC3(device, src0, 0x00000001, 0x00000000);
	}
}