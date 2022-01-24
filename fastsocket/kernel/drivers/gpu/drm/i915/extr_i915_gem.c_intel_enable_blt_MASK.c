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
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 

__attribute__((used)) static bool
FUNC3(struct drm_device *dev)
{
	if (!FUNC1(dev))
		return false;

	/* The blitter was dysfunctional on early prototypes */
	if (FUNC2(dev) && dev->pdev->revision < 8) {
		FUNC0("BLT not supported on this pre-production hardware;"
			 " graphics performance will be degraded.\n");
		return false;
	}

	return true;
}