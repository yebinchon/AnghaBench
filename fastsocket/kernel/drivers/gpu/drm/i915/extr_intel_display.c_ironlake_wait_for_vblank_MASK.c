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
typedef  scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev, int pipe)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 frame, frame_reg = FUNC3(pipe);

	frame = FUNC1(frame_reg);

	if (FUNC4(FUNC2(frame_reg) != frame, 50))
		FUNC0("vblank wait timed out\n");
}