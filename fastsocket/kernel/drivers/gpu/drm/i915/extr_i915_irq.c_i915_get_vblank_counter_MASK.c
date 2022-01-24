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
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int) ; 
 unsigned long FUNC3 (int) ; 
 int PIPE_FRAME_HIGH_MASK ; 
 int PIPE_FRAME_HIGH_SHIFT ; 
 int PIPE_FRAME_LOW_MASK ; 
 int PIPE_FRAME_LOW_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static u32 FUNC6(struct drm_device *dev, int pipe)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	unsigned long high_frame;
	unsigned long low_frame;
	u32 high1, high2, low;

	if (!FUNC4(dev, pipe)) {
		FUNC0("trying to get vblank count for disabled "
				"pipe %c\n", FUNC5(pipe));
		return 0;
	}

	high_frame = FUNC2(pipe);
	low_frame = FUNC3(pipe);

	/*
	 * High & low register fields aren't synchronized, so make sure
	 * we get a low value that's stable across two reads of the high
	 * register.
	 */
	do {
		high1 = FUNC1(high_frame) & PIPE_FRAME_HIGH_MASK;
		low   = FUNC1(low_frame)  & PIPE_FRAME_LOW_MASK;
		high2 = FUNC1(high_frame) & PIPE_FRAME_HIGH_MASK;
	} while (high1 != high2);

	high1 >>= PIPE_FRAME_HIGH_SHIFT;
	low >>= PIPE_FRAME_LOW_SHIFT;
	return (high1 << 8) | low;
}