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
typedef  int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int irq_mask; scalar_t__* pipestat; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  EMR ; 
 int GM45_ERROR_CP_PRIV ; 
 int GM45_ERROR_MEM_PRIV ; 
 int GM45_ERROR_PAGE_TABLE ; 
 int I915_ASLE_INTERRUPT ; 
 int I915_BSD_USER_INTERRUPT ; 
 int I915_DISPLAY_PIPE_A_EVENT_INTERRUPT ; 
 int I915_DISPLAY_PIPE_B_EVENT_INTERRUPT ; 
 int I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT ; 
 int I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT ; 
 int I915_DISPLAY_PORT_INTERRUPT ; 
 int I915_ERROR_MEMORY_REFRESH ; 
 int I915_ERROR_PAGE_TABLE ; 
 int I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT ; 
 int I915_USER_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  IMR ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  PIPE_GMBUS_EVENT_ENABLE ; 
 int /*<<< orphan*/  PORT_HOTPLUG_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	u32 enable_mask;
	u32 error_mask;

	/* Unmask the interrupts that we always want on. */
	dev_priv->irq_mask = ~(I915_ASLE_INTERRUPT |
			       I915_DISPLAY_PORT_INTERRUPT |
			       I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
			       I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
			       I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT |
			       I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT |
			       I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT);

	enable_mask = ~dev_priv->irq_mask;
	enable_mask |= I915_USER_INTERRUPT;

	if (FUNC1(dev))
		enable_mask |= I915_BSD_USER_INTERRUPT;

	dev_priv->pipestat[0] = 0;
	dev_priv->pipestat[1] = 0;
	FUNC3(dev_priv, 0, PIPE_GMBUS_EVENT_ENABLE);

	/*
	 * Enable some error detection, note the instruction error mask
	 * bit is reserved, so we leave it masked.
	 */
	if (FUNC1(dev)) {
		error_mask = ~(GM45_ERROR_PAGE_TABLE |
			       GM45_ERROR_MEM_PRIV |
			       GM45_ERROR_CP_PRIV |
			       I915_ERROR_MEMORY_REFRESH);
	} else {
		error_mask = ~(I915_ERROR_PAGE_TABLE |
			       I915_ERROR_MEMORY_REFRESH);
	}
	FUNC0(EMR, error_mask);

	FUNC0(IMR, dev_priv->irq_mask);
	FUNC0(IER, enable_mask);
	FUNC2(IER);

	FUNC0(PORT_HOTPLUG_EN, 0);
	FUNC2(PORT_HOTPLUG_EN);

	FUNC4(dev);

	return 0;
}