#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq_lock; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int DE_PIPEA_VBLANK_IVB ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, int pipe)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	unsigned long irqflags;

	if (!FUNC0(dev, pipe))
		return -EINVAL;

	FUNC2(&dev_priv->irq_lock, irqflags);
	FUNC1(dev_priv,
				    DE_PIPEA_VBLANK_IVB << (5 * pipe));
	FUNC3(&dev_priv->irq_lock, irqflags);

	return 0;
}