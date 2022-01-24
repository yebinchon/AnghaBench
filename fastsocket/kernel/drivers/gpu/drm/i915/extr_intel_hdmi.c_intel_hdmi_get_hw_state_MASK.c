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
typedef  int u32 ;
struct intel_hdmi {int /*<<< orphan*/  sdvox_reg; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int SDVO_ENABLE ; 
 struct intel_hdmi* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(struct intel_encoder *encoder,
				    enum pipe *pipe)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_hdmi *intel_hdmi = FUNC4(&encoder->base);
	u32 tmp;

	tmp = FUNC1(intel_hdmi->sdvox_reg);

	if (!(tmp & SDVO_ENABLE))
		return false;

	if (FUNC0(dev))
		*pipe = FUNC3(tmp);
	else
		*pipe = FUNC2(tmp);

	return true;
}