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
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int GRDOM_MEDIA ; 
 int GRDOM_RENDER ; 
 int GRDOM_RESET_ENABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ ILK_GDSR ; 
 scalar_t__ MCHBAR_MIRROR_BASE ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 gdrst;
	int ret;

	gdrst = FUNC0(MCHBAR_MIRROR_BASE + ILK_GDSR);
	FUNC1(MCHBAR_MIRROR_BASE + ILK_GDSR,
		   gdrst | GRDOM_RENDER | GRDOM_RESET_ENABLE);
	ret = FUNC2(FUNC0(MCHBAR_MIRROR_BASE + ILK_GDSR) & 0x1, 500);
	if (ret)
		return ret;

	/* We can't reset render&media without also resetting display ... */
	gdrst = FUNC0(MCHBAR_MIRROR_BASE + ILK_GDSR);
	FUNC1(MCHBAR_MIRROR_BASE + ILK_GDSR,
		   gdrst | GRDOM_MEDIA | GRDOM_RESET_ENABLE);
	return FUNC2(FUNC0(MCHBAR_MIRROR_BASE + ILK_GDSR) & 0x1, 500);
}