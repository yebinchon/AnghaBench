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
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq_lock; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT ; 
 int /*<<< orphan*/  I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIPE_START_VBLANK_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  VLV_IMR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev, int pipe)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	unsigned long irqflags;
	u32 imr;

	FUNC3(&dev_priv->irq_lock, irqflags);
	FUNC2(dev_priv, pipe,
			      PIPE_START_VBLANK_INTERRUPT_ENABLE);
	imr = FUNC0(VLV_IMR);
	if (pipe == 0)
		imr |= I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT;
	else
		imr |= I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT;
	FUNC1(VLV_IMR, imr);
	FUNC4(&dev_priv->irq_lock, irqflags);
}