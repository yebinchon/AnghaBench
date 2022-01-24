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
FUNC3(struct drm_device *dev, u32 dsrc)
{
	struct nouveau_device *device = FUNC0(dev);
	u32 ssrc = FUNC1(device, dsrc);
	if (!(ssrc & 0x00000100))
		return FUNC2(dev, 0x00e800);
	return FUNC2(dev, 0x00e820);
}