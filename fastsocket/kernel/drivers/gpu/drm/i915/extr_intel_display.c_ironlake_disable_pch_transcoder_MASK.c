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
typedef  int uint32_t ;
struct drm_i915_private {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int TRANS_CHICKEN2_TIMING_OVERRIDE ; 
 int TRANS_ENABLE ; 
 int TRANS_STATE_ENABLE ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC9 (int,int) ; 

__attribute__((used)) static void FUNC10(struct drm_i915_private *dev_priv,
					    enum pipe pipe)
{
	struct drm_device *dev = dev_priv->dev;
	uint32_t reg, val;

	/* FDI relies on the transcoder */
	FUNC7(dev_priv, pipe);
	FUNC6(dev_priv, pipe);

	/* Ports must be off as well */
	FUNC8(dev_priv, pipe);

	reg = FUNC4(pipe);
	val = FUNC2(reg);
	val &= ~TRANS_ENABLE;
	FUNC3(reg, val);
	/* wait for PCH transcoder off, transcoder state */
	if (FUNC9((FUNC2(reg) & TRANS_STATE_ENABLE) == 0, 50))
		FUNC0("failed to disable transcoder %d\n", pipe);

	if (!FUNC1(dev)) {
		/* Workaround: Clear the timing override chicken bit again. */
		reg = FUNC5(pipe);
		val = FUNC2(reg);
		val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
		FUNC3(reg, val);
	}
}