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
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 

__attribute__((used)) static bool FUNC3(struct drm_device *dev)
{
	/* With the introduction of the PCH we gained a dedicated
	 * LVDS presence pin, use it. */
	if (FUNC0(dev))
		return true;

	/* Otherwise LVDS was only attached to mobile products,
	 * except for the inglorious 830gm */
	return FUNC2(dev) && !FUNC1(dev);
}