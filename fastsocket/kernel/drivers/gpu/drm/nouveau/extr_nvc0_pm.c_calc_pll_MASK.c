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
struct nvbios_pll {int /*<<< orphan*/  refclk; } ;
struct nouveau_device {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_bios* FUNC0 (struct nouveau_device*) ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*,struct nvbios_pll*,int,int*,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC3 (struct nouveau_bios*,int,struct nvbios_pll*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int,int,int) ; 

__attribute__((used)) static u32
FUNC5(struct drm_device *dev, int clk, u32 freq, u32 *coef)
{
	struct nouveau_device *device = FUNC1(dev);
	struct nouveau_bios *bios = FUNC0(device);
	struct nvbios_pll limits;
	int N, M, P, ret;

	ret = FUNC3(bios, 0x137000 + (clk * 0x20), &limits);
	if (ret)
		return 0;

	limits.refclk = FUNC4(dev, clk, 0x137120, 0x137140);
	if (!limits.refclk)
		return 0;

	ret = FUNC2(dev, &limits, freq, &N, NULL, &M, &P);
	if (ret <= 0)
		return 0;

	*coef = (P << 16) | (N << 8) | M;
	return ret;
}