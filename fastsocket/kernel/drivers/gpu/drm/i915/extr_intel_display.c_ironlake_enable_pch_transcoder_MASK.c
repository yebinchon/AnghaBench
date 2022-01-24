#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct drm_i915_private {struct drm_device* dev; TYPE_1__* info; struct drm_crtc** pipe_to_crtc_mapping; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_5__ {int /*<<< orphan*/  pch_pll; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_SDVO ; 
 int FUNC6 (int) ; 
 int PIPECONF_BPC_MASK ; 
 int PIPECONF_INTERLACED_ILK ; 
 int PIPECONF_INTERLACE_MASK ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int TRANS_CHICKEN2_TIMING_OVERRIDE ; 
 int TRANS_ENABLE ; 
 int TRANS_INTERLACED ; 
 int TRANS_INTERLACE_MASK ; 
 int TRANS_LEGACY_INTERLACED_ILK ; 
 int TRANS_PROGRESSIVE ; 
 int TRANS_STATE_ENABLE ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC12 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (struct drm_crtc*) ; 
 scalar_t__ FUNC14 (int,int) ; 

__attribute__((used)) static void FUNC15(struct drm_i915_private *dev_priv,
					   enum pipe pipe)
{
	struct drm_device *dev = dev_priv->dev;
	struct drm_crtc *crtc = dev_priv->pipe_to_crtc_mapping[pipe];
	uint32_t reg, val, pipeconf_val;

	/* PCH only available on ILK+ */
	FUNC0(dev_priv->info->gen < 5);

	/* Make sure PCH DPLL is enabled */
	FUNC11(dev_priv,
			       FUNC13(crtc)->pch_pll,
			       FUNC13(crtc));

	/* FDI must be feeding us bits for PCH ports */
	FUNC10(dev_priv, pipe);
	FUNC9(dev_priv, pipe);

	if (FUNC2(dev)) {
		/* Workaround: Set the timing override bit before enabling the
		 * pch transcoder. */
		reg = FUNC8(pipe);
		val = FUNC4(reg);
		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
		FUNC5(reg, val);
	}

	reg = FUNC7(pipe);
	val = FUNC4(reg);
	pipeconf_val = FUNC4(FUNC6(pipe));

	if (FUNC3(dev_priv->dev)) {
		/*
		 * make the BPC in transcoder be consistent with
		 * that in pipeconf reg.
		 */
		val &= ~PIPECONF_BPC_MASK;
		val |= pipeconf_val & PIPECONF_BPC_MASK;
	}

	val &= ~TRANS_INTERLACE_MASK;
	if ((pipeconf_val & PIPECONF_INTERLACE_MASK) == PIPECONF_INTERLACED_ILK)
		if (FUNC3(dev_priv->dev) &&
		    FUNC12(crtc, INTEL_OUTPUT_SDVO))
			val |= TRANS_LEGACY_INTERLACED_ILK;
		else
			val |= TRANS_INTERLACED;
	else
		val |= TRANS_PROGRESSIVE;

	FUNC5(reg, val | TRANS_ENABLE);
	if (FUNC14(FUNC4(reg) & TRANS_STATE_ENABLE, 100))
		FUNC1("failed to enable transcoder %d\n", pipe);
}