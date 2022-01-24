#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq_lock; TYPE_1__* info; } ;
typedef  TYPE_2__ drm_i915_private_t ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSTPM ; 
 int /*<<< orphan*/  INSTPM_AGPBUSY_DIS ; 
 int PIPE_START_VBLANK_INTERRUPT_ENABLE ; 
 int PIPE_VBLANK_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev, int pipe)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	unsigned long irqflags;

	FUNC3(&dev_priv->irq_lock, irqflags);
	if (dev_priv->info->gen == 3)
		FUNC0(INSTPM, FUNC1(INSTPM_AGPBUSY_DIS));

	FUNC2(dev_priv, pipe,
			      PIPE_VBLANK_INTERRUPT_ENABLE |
			      PIPE_START_VBLANK_INTERRUPT_ENABLE);
	FUNC4(&dev_priv->irq_lock, irqflags);
}