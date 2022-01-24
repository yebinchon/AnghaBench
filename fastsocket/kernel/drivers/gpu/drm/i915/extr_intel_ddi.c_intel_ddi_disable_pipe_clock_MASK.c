#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* dev; } ;
struct intel_crtc {int cpu_transcoder; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
struct TYPE_3__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TRANS_CLK_SEL_DISABLED ; 

void FUNC2(struct intel_crtc *intel_crtc)
{
	struct drm_i915_private *dev_priv = intel_crtc->base.dev->dev_private;
	enum transcoder cpu_transcoder = intel_crtc->cpu_transcoder;

	if (cpu_transcoder != TRANSCODER_EDP)
		FUNC0(FUNC1(cpu_transcoder),
			   TRANS_CLK_SEL_DISABLED);
}