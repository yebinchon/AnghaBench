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
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct nouveau_device*,int) ; 

__attribute__((used)) static bool
FUNC2(void *data)
{
	struct drm_device *dev = data;
	struct nouveau_device *device = FUNC0(dev);

	if ((FUNC1(device, 0x400760) & 0x000000f0) >> 4 !=
	    (FUNC1(device, 0x400760) & 0x0000000f))
		return false;

	if (FUNC1(device, 0x400700))
		return false;

	return true;
}