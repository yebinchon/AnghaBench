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
typedef  int u32 ;
struct drm_i915_private {int /*<<< orphan*/  dev; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int PIPECONF_ENABLE ; 
 int TRANSCODER_A ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int) ; 
 int FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct drm_i915_private *dev_priv, enum pipe pipe,
			      bool pch_port)
{
	enum transcoder cpu_transcoder = FUNC8(dev_priv,
								      pipe);
	enum pipe pch_transcoder;
	int reg;
	u32 val;

	if (FUNC0(dev_priv->dev))
		pch_transcoder = TRANSCODER_A;
	else
		pch_transcoder = pipe;

	/*
	 * A pipe without a PLL won't actually be able to drive bits from
	 * a plane.  On ILK+ the pipe PLLs are integrated, so we don't
	 * need the check.
	 */
	if (!FUNC1(dev_priv->dev))
		FUNC7(dev_priv, pipe);
	else {
		if (pch_port) {
			/* if driving the PCH, we need FDI enabled */
			FUNC5(dev_priv, pch_transcoder);
			FUNC6(dev_priv,
						  (enum pipe) cpu_transcoder);
		}
		/* FIXME: assert CPU port conditions for SNB+ */
	}

	reg = FUNC4(cpu_transcoder);
	val = FUNC2(reg);
	if (val & PIPECONF_ENABLE)
		return;

	FUNC3(reg, val | PIPECONF_ENABLE);
	FUNC9(dev_priv->dev, pipe);
}