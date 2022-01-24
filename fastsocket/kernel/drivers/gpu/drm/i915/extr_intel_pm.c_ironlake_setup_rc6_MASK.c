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
struct TYPE_2__ {int /*<<< orphan*/ * pwrctx; int /*<<< orphan*/ * renderctx; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (dev_priv->ips.renderctx == NULL)
		dev_priv->ips.renderctx = FUNC0(dev);
	if (!dev_priv->ips.renderctx)
		return -ENOMEM;

	if (dev_priv->ips.pwrctx == NULL)
		dev_priv->ips.pwrctx = FUNC0(dev);
	if (!dev_priv->ips.pwrctx) {
		FUNC1(dev);
		return -ENOMEM;
	}

	return 0;
}