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
struct intel_lvds_encoder {int /*<<< orphan*/  pfit_control; int /*<<< orphan*/  pfit_pgm_ratios; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PFIT_CONTROL ; 
 int /*<<< orphan*/  PFIT_PGM_RATIOS ; 
 struct intel_lvds_encoder* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct intel_encoder *encoder)
{
	struct drm_device *dev = encoder->base.dev;
	struct intel_lvds_encoder *enc = FUNC3(&encoder->base);
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (FUNC1(dev) || !enc->pfit_control)
		return;

	/*
	 * Enable automatic panel scaling so that non-native modes
	 * fill the screen.  The panel fitter should only be
	 * adjusted whilst the pipe is disabled, according to
	 * register description and PRM.
	 */
	FUNC0("applying panel-fitter: %x, %x\n",
		      enc->pfit_control,
		      enc->pfit_pgm_ratios);

	FUNC2(PFIT_PGM_RATIOS, enc->pfit_pgm_ratios);
	FUNC2(PFIT_CONTROL, enc->pfit_control);
}