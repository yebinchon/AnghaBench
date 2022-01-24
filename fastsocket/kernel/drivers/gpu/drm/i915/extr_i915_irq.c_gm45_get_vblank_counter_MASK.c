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
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static u32 FUNC5(struct drm_device *dev, int pipe)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	int reg = FUNC2(pipe);

	if (!FUNC3(dev, pipe)) {
		FUNC0("trying to get vblank count for disabled "
				 "pipe %c\n", FUNC4(pipe));
		return 0;
	}

	return FUNC1(reg);
}