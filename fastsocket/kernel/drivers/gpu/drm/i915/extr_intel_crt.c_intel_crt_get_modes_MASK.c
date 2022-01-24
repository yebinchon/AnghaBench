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
struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  crt_ddc_pin; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMBUS_PORT_DPB ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_connector*,struct i2c_adapter*) ; 
 struct i2c_adapter* FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int ret;
	struct i2c_adapter *i2c;

	i2c = FUNC2(dev_priv, dev_priv->crt_ddc_pin);
	ret = FUNC1(connector, i2c);
	if (ret || !FUNC0(dev))
		return ret;

	/* Try to probe digital port for output in DVI-I -> VGA mode. */
	i2c = FUNC2(dev_priv, GMBUS_PORT_DPB);
	return FUNC1(connector, i2c);
}