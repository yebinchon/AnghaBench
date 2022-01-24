#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_ring_buffer {int dummy; } ;
struct TYPE_8__ {TYPE_3__* pwrctx; TYPE_1__* renderctx; } ;
struct TYPE_6__ {int interruptible; } ;
struct drm_i915_private {TYPE_4__ ips; TYPE_2__ mm; struct intel_ring_buffer* ring; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; struct drm_i915_private* dev_private; } ;
struct TYPE_7__ {int gtt_offset; } ;
struct TYPE_5__ {int gtt_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int MI_FLUSH ; 
 int MI_MM_SPACE_GTT ; 
 int MI_NOOP ; 
 int MI_RESTORE_EXT_STATE_EN ; 
 int MI_RESTORE_INHIBIT ; 
 int MI_SAVE_EXT_STATE_EN ; 
 int MI_SET_CONTEXT ; 
 int MI_SUSPEND_FLUSH ; 
 int MI_SUSPEND_FLUSH_EN ; 
 int /*<<< orphan*/  PWRCTXA ; 
 int PWRCTX_EN ; 
 size_t RCS ; 
 int RCX_SW_EXIT ; 
 int /*<<< orphan*/  RSTDBYCTL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_ring_buffer*) ; 
 int FUNC6 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_ring_buffer*,int) ; 
 int FUNC8 (struct intel_ring_buffer*) ; 
 int FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_ring_buffer *ring = &dev_priv->ring[RCS];
	bool was_interruptible;
	int ret;

	/* rc6 disabled by default due to repeated reports of hanging during
	 * boot and resume.
	 */
	if (!FUNC4(dev))
		return;

	FUNC3(!FUNC11(&dev->struct_mutex));

	ret = FUNC9(dev);
	if (ret)
		return;

	was_interruptible = dev_priv->mm.interruptible;
	dev_priv->mm.interruptible = false;

	/*
	 * GPU can automatically power down the render unit if given a page
	 * to save state.
	 */
	ret = FUNC6(ring, 6);
	if (ret) {
		FUNC10(dev);
		dev_priv->mm.interruptible = was_interruptible;
		return;
	}

	FUNC7(ring, MI_SUSPEND_FLUSH | MI_SUSPEND_FLUSH_EN);
	FUNC7(ring, MI_SET_CONTEXT);
	FUNC7(ring, dev_priv->ips.renderctx->gtt_offset |
			MI_MM_SPACE_GTT |
			MI_SAVE_EXT_STATE_EN |
			MI_RESTORE_EXT_STATE_EN |
			MI_RESTORE_INHIBIT);
	FUNC7(ring, MI_SUSPEND_FLUSH);
	FUNC7(ring, MI_NOOP);
	FUNC7(ring, MI_FLUSH);
	FUNC5(ring);

	/*
	 * Wait for the command parser to advance past MI_SET_CONTEXT. The HW
	 * does an implicit flush, combined with MI_FLUSH above, it should be
	 * safe to assume that renderctx is valid
	 */
	ret = FUNC8(ring);
	dev_priv->mm.interruptible = was_interruptible;
	if (ret) {
		FUNC0("failed to enable ironlake power power savings\n");
		FUNC10(dev);
		return;
	}

	FUNC2(PWRCTXA, dev_priv->ips.pwrctx->gtt_offset | PWRCTX_EN);
	FUNC2(RSTDBYCTL, FUNC1(RSTDBYCTL) & ~RCX_SW_EXIT);
}