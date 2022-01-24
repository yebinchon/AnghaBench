#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int I915_TILING_NONE ; 
 TYPE_1__* FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*,int,int) ; 

uint32_t
FUNC3(struct drm_device *dev, uint32_t size,
			   int tiling_mode, bool fenced)
{
	/*
	 * Minimum alignment is 4k (GTT page size), but might be greater
	 * if a fence register is needed for the object.
	 */
	if (FUNC0(dev)->gen >= 4 || (!fenced && FUNC1(dev)) ||
	    tiling_mode == I915_TILING_NONE)
		return 4096;

	/*
	 * Previous chips need to be aligned to the size of the smallest
	 * fence register that can contain the object.
	 */
	return FUNC2(dev, size, tiling_mode);
}