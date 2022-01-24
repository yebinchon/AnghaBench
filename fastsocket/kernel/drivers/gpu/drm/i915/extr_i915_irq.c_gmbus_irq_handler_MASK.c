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
struct drm_i915_private {int /*<<< orphan*/  gmbus_wait_queue; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef  struct drm_i915_private drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = (drm_i915_private_t *) dev->dev_private;

	FUNC0(&dev_priv->gmbus_wait_queue);
}