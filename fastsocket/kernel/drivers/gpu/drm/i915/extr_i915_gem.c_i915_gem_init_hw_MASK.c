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
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 TYPE_1__* FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	int ret;

	if (FUNC2(dev)->gen < 6 && !FUNC9())
		return -EIO;

	if (FUNC3(dev) && (FUNC0(0x120010) == 1))
		FUNC1(0x9008, FUNC0(0x9008) | 0xf0000);

	FUNC8(dev);

	FUNC7(dev);

	ret = FUNC6(dev);
	if (ret)
		return ret;

	/*
	 * XXX: There was some w/a described somewhere suggesting loading
	 * contexts before PPGTT.
	 */
	FUNC4(dev);
	FUNC5(dev);

	return 0;
}