#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ base; } ;
struct intel_crt {TYPE_3__ base; } ;
struct i2c_adapter {int dummy; } ;
struct edid {int input; } ;
struct drm_i915_private {int /*<<< orphan*/  crt_ddc_pin; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DRM_EDID_INPUT_DIGITAL ; 
 scalar_t__ INTEL_OUTPUT_ANALOG ; 
 struct intel_crt* FUNC2 (struct drm_connector*) ; 
 struct edid* FUNC3 (struct drm_connector*,struct i2c_adapter*) ; 
 struct i2c_adapter* FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 

__attribute__((used)) static bool FUNC6(struct drm_connector *connector)
{
	struct intel_crt *crt = FUNC2(connector);
	struct drm_i915_private *dev_priv = crt->base.base.dev->dev_private;
	struct edid *edid;
	struct i2c_adapter *i2c;

	FUNC0(crt->base.type != INTEL_OUTPUT_ANALOG);

	i2c = FUNC4(dev_priv, dev_priv->crt_ddc_pin);
	edid = FUNC3(connector, i2c);

	if (edid) {
		bool is_digital = edid->input & DRM_EDID_INPUT_DIGITAL;

		/*
		 * This may be a DVI-I connector with a shared DDC
		 * link between analog and digital outputs, so we
		 * have to check the EDID input spec of the attached device.
		 */
		if (!is_digital) {
			FUNC1("CRT detected via DDC:0x50 [EDID]\n");
			return true;
		}

		FUNC1("CRT not detected via DDC:0x50 [EDID reports a digital panel]\n");
	} else {
		FUNC1("CRT not detected via DDC:0x50 [no valid EDID found]\n");
	}

	FUNC5(edid);

	return false;
}