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
struct drm_i915_private {int /*<<< orphan*/  slab; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 

void *FUNC1(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	return FUNC0(dev_priv->slab, GFP_KERNEL | __GFP_ZERO);
}