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
struct nouveau_drm {int dummy; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct creg {int clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int) ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_device*,int,int,int) ; 

__attribute__((used)) static void
FUNC4(struct drm_device *dev, int clk, struct creg *reg)
{
	struct nouveau_device *device = FUNC1(dev);
	struct nouveau_drm *drm = FUNC2(dev);

	if (!reg->clk) {
		FUNC0(drm, "no clock for %02x\n", clk);
		return;
	}

	FUNC3(device, 0x004120 + (clk * 4), 0x003f3141, 0x00000101 | reg->clk);
}