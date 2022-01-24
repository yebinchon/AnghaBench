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
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int irq_mask; scalar_t__* pipestat; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  EMR ; 
 int I915_DISPLAY_PIPE_A_EVENT_INTERRUPT ; 
 int I915_DISPLAY_PIPE_B_EVENT_INTERRUPT ; 
 int I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT ; 
 int I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT ; 
 int I915_ERROR_MEMORY_REFRESH ; 
 int I915_ERROR_PAGE_TABLE ; 
 int I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT ; 
 int I915_USER_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  IMR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;

	dev_priv->pipestat[0] = 0;
	dev_priv->pipestat[1] = 0;

	FUNC0(EMR,
		     ~(I915_ERROR_PAGE_TABLE | I915_ERROR_MEMORY_REFRESH));

	/* Unmask the interrupts that we always want on. */
	dev_priv->irq_mask =
		~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
		  I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
		  I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT |
		  I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT |
		  I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT);
	FUNC0(IMR, dev_priv->irq_mask);

	FUNC0(IER,
		     I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
		     I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
		     I915_RENDER_COMMAND_PARSER_ERROR_INTERRUPT |
		     I915_USER_INTERRUPT);
	FUNC1(IER);

	return 0;
}