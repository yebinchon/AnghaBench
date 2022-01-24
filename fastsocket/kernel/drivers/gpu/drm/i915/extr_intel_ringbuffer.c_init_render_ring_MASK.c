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
struct intel_ring_buffer {int itlb_before_ctx_switch; struct drm_device* dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int ASYNC_FLIP_PERF_DISABLE ; 
 int /*<<< orphan*/  CACHE_MODE_0 ; 
 int CM0_STC_EVICT_DISABLE_LRA_SNB ; 
 int /*<<< orphan*/  GEN6_RENDER_L3_PARITY_ERROR ; 
 int /*<<< orphan*/  GFX_MODE ; 
 int /*<<< orphan*/  GFX_MODE_GEN7 ; 
 int GFX_REPLAY_MODE ; 
 int GFX_TLB_INVALIDATE_ALWAYS ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSTPM ; 
 int INSTPM_FORCE_ORDERING ; 
 TYPE_1__* FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  MI_MODE ; 
 int VS_TIMER_DISPATCH ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (struct intel_ring_buffer*) ; 
 int FUNC10 (struct intel_ring_buffer*) ; 

__attribute__((used)) static int FUNC11(struct intel_ring_buffer *ring)
{
	struct drm_device *dev = ring->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	int ret = FUNC10(ring);

	if (FUNC4(dev)->gen > 3)
		FUNC2(MI_MODE, FUNC8(VS_TIMER_DISPATCH));

	/* We need to disable the AsyncFlip performance optimisations in order
	 * to use MI_WAIT_FOR_EVENT within the CS. It should already be
	 * programmed to '1' on all products.
	 */
	if (FUNC4(dev)->gen >= 6)
		FUNC2(MI_MODE, FUNC8(ASYNC_FLIP_PERF_DISABLE));

	/* Required for the hardware to program scanline values for waiting */
	if (FUNC4(dev)->gen == 6)
		FUNC2(GFX_MODE,
			   FUNC8(GFX_TLB_INVALIDATE_ALWAYS));

	if (FUNC6(dev))
		FUNC2(GFX_MODE_GEN7,
			   FUNC7(GFX_TLB_INVALIDATE_ALWAYS) |
			   FUNC8(GFX_REPLAY_MODE));

	if (FUNC4(dev)->gen >= 5) {
		ret = FUNC9(ring);
		if (ret)
			return ret;
	}

	if (FUNC5(dev)) {
		/* From the Sandybridge PRM, volume 1 part 3, page 24:
		 * "If this bit is set, STCunit will have LRA as replacement
		 *  policy. [...] This bit must be reset.  LRA replacement
		 *  policy is not supported."
		 */
		FUNC2(CACHE_MODE_0,
			   FUNC7(CM0_STC_EVICT_DISABLE_LRA_SNB));

		/* This is not explicitly set for GEN6, so read the register.
		 * see intel_ring_mi_set_context() for why we care.
		 * TODO: consider explicitly setting the bit for GEN5
		 */
		ring->itlb_before_ctx_switch =
			!!(FUNC1(GFX_MODE) & GFX_TLB_INVALIDATE_ALWAYS);
	}

	if (FUNC4(dev)->gen >= 6)
		FUNC2(INSTPM, FUNC8(INSTPM_FORCE_ORDERING));

	if (FUNC0(dev))
		FUNC3(ring, ~GEN6_RENDER_L3_PARITY_ERROR);

	return ret;
}