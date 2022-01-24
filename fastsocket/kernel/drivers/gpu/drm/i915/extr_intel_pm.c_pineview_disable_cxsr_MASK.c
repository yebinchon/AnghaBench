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
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSPFW3 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int PINEVIEW_SELF_REFRESH_EN ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	/* deactivate cxsr */
	FUNC1(DSPFW3, FUNC0(DSPFW3) & ~PINEVIEW_SELF_REFRESH_EN);
}