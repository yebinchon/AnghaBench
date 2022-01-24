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
struct edid {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  crt_ddc_pin; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 struct edid* FUNC0 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct edid *
FUNC2(struct drm_connector *connector)
{
	struct drm_i915_private *dev_priv = connector->dev->dev_private;

	return FUNC0(connector,
			    FUNC1(dev_priv,
						    dev_priv->crt_ddc_pin));
}