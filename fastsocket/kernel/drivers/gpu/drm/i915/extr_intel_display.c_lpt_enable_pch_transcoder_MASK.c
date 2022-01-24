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
struct drm_i915_private {TYPE_1__* info; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PIPECONF_INTERLACED_ILK ; 
 int PIPECONF_INTERLACE_MASK_HSW ; 
 int /*<<< orphan*/  TRANSCODER_A ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int TRANS_CHICKEN2_TIMING_OVERRIDE ; 
 int TRANS_ENABLE ; 
 int TRANS_INTERLACED ; 
 int TRANS_PROGRESSIVE ; 
 int TRANS_STATE_ENABLE ; 
 int /*<<< orphan*/  _TRANSACONF ; 
 int /*<<< orphan*/  _TRANSA_CHICKEN2 ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC8 (int,int) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_private *dev_priv,
				      enum transcoder cpu_transcoder)
{
	u32 val, pipeconf_val;

	/* PCH only available on ILK+ */
	FUNC0(dev_priv->info->gen < 5);

	/* FDI must be feeding us bits for PCH ports */
	FUNC7(dev_priv, (enum pipe) cpu_transcoder);
	FUNC6(dev_priv, TRANSCODER_A);

	/* Workaround: set timing override bit. */
	val = FUNC2(_TRANSA_CHICKEN2);
	val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
	FUNC3(_TRANSA_CHICKEN2, val);

	val = TRANS_ENABLE;
	pipeconf_val = FUNC2(FUNC4(cpu_transcoder));

	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) ==
	    PIPECONF_INTERLACED_ILK)
		val |= TRANS_INTERLACED;
	else
		val |= TRANS_PROGRESSIVE;

	FUNC3(FUNC5(TRANSCODER_A), val);
	if (FUNC8(FUNC2(_TRANSACONF) & TRANS_STATE_ENABLE, 100))
		FUNC1("Failed to enable PCH transcoder\n");
}