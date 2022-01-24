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
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crt {int /*<<< orphan*/  adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int ADPA_DAC_ENABLE ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 struct intel_crt* FUNC4 (struct intel_encoder*) ; 

__attribute__((used)) static bool FUNC5(struct intel_encoder *encoder,
				   enum pipe *pipe)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crt *crt = FUNC4(encoder);
	u32 tmp;

	tmp = FUNC1(crt->adpa_reg);

	if (!(tmp & ADPA_DAC_ENABLE))
		return false;

	if (FUNC0(dev))
		*pipe = FUNC3(tmp);
	else
		*pipe = FUNC2(tmp);

	return true;
}