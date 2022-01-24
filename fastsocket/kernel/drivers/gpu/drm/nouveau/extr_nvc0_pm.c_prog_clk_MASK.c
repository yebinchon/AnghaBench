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
struct nvc0_pm_clock {int ssel; int ddiv; int mdiv; int /*<<< orphan*/  coef; int /*<<< orphan*/  dsrc; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_device*,int,int,int) ; 
 int FUNC2 (struct nouveau_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct drm_device *dev, int clk, struct nvc0_pm_clock *info)
{
	struct nouveau_device *device = FUNC0(dev);

	/* program dividers at 137160/1371d0 first */
	if (clk < 7 && !info->ssel) {
		FUNC1(device, 0x1371d0 + (clk * 0x04), 0x80003f3f, info->ddiv);
		FUNC4(device, 0x137160 + (clk * 0x04), info->dsrc);
	}

	/* switch clock to non-pll mode */
	FUNC1(device, 0x137100, (1 << clk), 0x00000000);
	FUNC3(device, 0x137100, (1 << clk), 0x00000000);

	/* reprogram pll */
	if (clk < 7) {
		/* make sure it's disabled first... */
		u32 base = 0x137000 + (clk * 0x20);
		u32 ctrl = FUNC2(device, base + 0x00);
		if (ctrl & 0x00000001) {
			FUNC1(device, base + 0x00, 0x00000004, 0x00000000);
			FUNC1(device, base + 0x00, 0x00000001, 0x00000000);
		}
		/* program it to new values, if necessary */
		if (info->ssel) {
			FUNC4(device, base + 0x04, info->coef);
			FUNC1(device, base + 0x00, 0x00000001, 0x00000001);
			FUNC3(device, base + 0x00, 0x00020000, 0x00020000);
			FUNC1(device, base + 0x00, 0x00020004, 0x00000004);
		}
	}

	/* select pll/non-pll mode, and program final clock divider */
	FUNC1(device, 0x137100, (1 << clk), info->ssel);
	FUNC3(device, 0x137100, (1 << clk), info->ssel);
	FUNC1(device, 0x137250 + (clk * 0x04), 0x00003f3f, info->mdiv);
}