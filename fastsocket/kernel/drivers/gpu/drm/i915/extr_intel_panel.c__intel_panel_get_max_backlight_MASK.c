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
typedef  int u32 ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 TYPE_1__* FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 

__attribute__((used)) static u32 FUNC4(struct drm_device *dev)
{
	u32 max;

	max = FUNC2(dev);

	if (FUNC0(dev)) {
		max >>= 16;
	} else {
		if (FUNC1(dev)->gen < 4)
			max >>= 17;
		else
			max >>= 16;

		if (FUNC3(dev))
			max *= 0xff;
	}

	return max;
}