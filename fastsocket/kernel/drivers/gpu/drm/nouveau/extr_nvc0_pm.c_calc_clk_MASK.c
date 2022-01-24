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
struct nvc0_pm_clock {int dsrc; int ddiv; int mdiv; int ssel; int freq; int /*<<< orphan*/  coef; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct drm_device*,int,int,int,int*) ; 
 int FUNC2 (struct drm_device*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,int,int,int*,int*) ; 
 int FUNC4 (struct drm_device*,int) ; 

__attribute__((used)) static int
FUNC5(struct drm_device *dev, int clk, struct nvc0_pm_clock *info, u32 freq)
{
	u32 src0, div0, div1D, div1P = 0;
	u32 clk0, clk1 = 0;

	/* invalid clock domain */
	if (!freq)
		return 0;

	/* first possible path, using only dividers */
	clk0 = FUNC3(dev, clk, freq, &src0, &div0);
	clk0 = FUNC1(dev, clk, clk0, freq, &div1D);

	/* see if we can get any closer using PLLs */
	if (clk0 != freq && (0x00004387 & (1 << clk))) {
		if (clk < 7)
			clk1 = FUNC2(dev, clk, freq, &info->coef);
		else
			clk1 = FUNC4(dev, 0x1370e0);
		clk1 = FUNC1(dev, clk, clk1, freq, &div1P);
	}

	/* select the method which gets closest to target freq */
	if (FUNC0((int)freq - clk0) <= FUNC0((int)freq - clk1)) {
		info->dsrc = src0;
		if (div0) {
			info->ddiv |= 0x80000000;
			info->ddiv |= div0 << 8;
			info->ddiv |= div0;
		}
		if (div1D) {
			info->mdiv |= 0x80000000;
			info->mdiv |= div1D;
		}
		info->ssel = 0;
		info->freq = clk0;
	} else {
		if (div1P) {
			info->mdiv |= 0x80000000;
			info->mdiv |= div1P << 8;
		}
		info->ssel = (1 << clk);
		info->freq = clk1;
	}

	return 0;
}