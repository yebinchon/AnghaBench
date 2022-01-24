#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_clip_rect {int dummy; } ;
struct TYPE_4__ {int num_cliprects; int start; int used; int /*<<< orphan*/  DR4; int /*<<< orphan*/  DR1; } ;
typedef  TYPE_1__ drm_i915_batchbuffer_t ;
struct TYPE_5__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 TYPE_3__* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int MI_BATCH_BUFFER ; 
 int MI_BATCH_BUFFER_START ; 
 int MI_BATCH_NON_SECURE ; 
 int MI_BATCH_NON_SECURE_I965 ; 
 int MI_FLUSH ; 
 int MI_INVALIDATE_ISP ; 
 int MI_NOOP ; 
 int MI_NO_WRITE_FLUSH ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct drm_device*,struct drm_clip_rect*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 

__attribute__((used)) static int FUNC12(struct drm_device * dev,
				     drm_i915_batchbuffer_t * batch,
				     struct drm_clip_rect *cliprects)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int nbox = batch->num_cliprects;
	int i, count, ret;

	if ((batch->start | batch->used) & 0x7) {
		FUNC2("alignment");
		return -EINVAL;
	}

	FUNC11(dev);

	count = nbox ? nbox : 1;
	for (i = 0; i < count; i++) {
		if (i < nbox) {
			ret = FUNC9(dev, &cliprects[i],
					    batch->DR1, batch->DR4);
			if (ret)
				return ret;
		}

		if (!FUNC7(dev) && !FUNC4(dev)) {
			ret = FUNC1(2);
			if (ret)
				return ret;

			if (FUNC3(dev)->gen >= 4) {
				FUNC8(MI_BATCH_BUFFER_START | (2 << 6) | MI_BATCH_NON_SECURE_I965);
				FUNC8(batch->start);
			} else {
				FUNC8(MI_BATCH_BUFFER_START | (2 << 6));
				FUNC8(batch->start | MI_BATCH_NON_SECURE);
			}
		} else {
			ret = FUNC1(4);
			if (ret)
				return ret;

			FUNC8(MI_BATCH_BUFFER);
			FUNC8(batch->start | MI_BATCH_NON_SECURE);
			FUNC8(batch->start + batch->used - 4);
			FUNC8(0);
		}
		FUNC0();
	}


	if (FUNC5(dev) || FUNC6(dev)) {
		if (FUNC1(2) == 0) {
			FUNC8(MI_FLUSH | MI_NO_WRITE_FLUSH | MI_INVALIDATE_ISP);
			FUNC8(MI_NOOP);
			FUNC0();
		}
	}

	FUNC10(dev);
	return 0;
}