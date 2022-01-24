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
struct TYPE_2__ {int /*<<< orphan*/  delayed_resume_work; } ;
struct drm_i915_private {TYPE_1__ rps; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;

	if (FUNC2(dev)) {
		FUNC5(dev);
		FUNC6(dev);
		FUNC4(dev);
	} else if ((FUNC0(dev) || FUNC1(dev)) && !FUNC3(dev)) {
		/*
		 * PCU communication is slow and this doesn't need to be
		 * done at any specific time, so do this out of our fast path
		 * to make resume and init faster.
		 */
		FUNC8(&dev_priv->rps.delayed_resume_work,
				      FUNC7(HZ));
	}
}