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
typedef  scalar_t__ u32 ;
struct drm_i915_private {int /*<<< orphan*/ * ring; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 size_t BCS ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 size_t RCS ; 
 size_t VCS ; 
 int FUNC1 (struct drm_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int ret;

	ret = FUNC6(dev);
	if (ret)
		return ret;

	if (FUNC0(dev)) {
		ret = FUNC5(dev);
		if (ret)
			goto cleanup_render_ring;
	}

	if (FUNC3(dev)) {
		ret = FUNC4(dev);
		if (ret)
			goto cleanup_bsd_ring;
	}

	ret = FUNC1(dev, ((u32)~0 - 0x1000));
	if (ret)
		goto cleanup_blt_ring;

	return 0;

cleanup_blt_ring:
	FUNC2(&dev_priv->ring[BCS]);
cleanup_bsd_ring:
	FUNC2(&dev_priv->ring[VCS]);
cleanup_render_ring:
	FUNC2(&dev_priv->ring[RCS]);

	return ret;
}