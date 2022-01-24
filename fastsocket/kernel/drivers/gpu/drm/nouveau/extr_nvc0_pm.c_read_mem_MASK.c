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
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct drm_device*,int) ; 

__attribute__((used)) static u32
FUNC4(struct drm_device *dev)
{
	struct nouveau_device *device = FUNC0(dev);
	u32 ssel = FUNC1(device, 0x1373f0);
	if (ssel & 0x00000001)
		return FUNC2(dev, 0, 0x137300, 0x137310);
	return FUNC3(dev, 0x132000);
}