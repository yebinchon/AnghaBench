#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq_lock; TYPE_1__* info; } ;
typedef  TYPE_2__ drm_i915_private_t ;
struct TYPE_7__ {int gen; } ;
struct TYPE_5__ {int gen; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSTPM ; 
 int /*<<< orphan*/  INSTPM_AGPBUSY_DIS ; 
 TYPE_4__* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  PIPE_START_VBLANK_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  PIPE_VBLANK_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev, int pipe)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	unsigned long irqflags;

	if (!FUNC4(dev, pipe))
		return -EINVAL;

	FUNC5(&dev_priv->irq_lock, irqflags);
	if (FUNC1(dev)->gen >= 4)
		FUNC3(dev_priv, pipe,
				     PIPE_START_VBLANK_INTERRUPT_ENABLE);
	else
		FUNC3(dev_priv, pipe,
				     PIPE_VBLANK_INTERRUPT_ENABLE);

	/* maintain vblank delivery even in deep C-states */
	if (dev_priv->info->gen == 3)
		FUNC0(INSTPM, FUNC2(INSTPM_AGPBUSY_DIS));
	FUNC6(&dev_priv->irq_lock, irqflags);

	return 0;
}