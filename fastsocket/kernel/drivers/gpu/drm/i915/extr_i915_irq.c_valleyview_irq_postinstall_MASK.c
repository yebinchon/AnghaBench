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
typedef  int u32 ;
typedef  int u16 ;
struct drm_device {int /*<<< orphan*/  pdev; scalar_t__ dev_private; } ;
struct TYPE_5__ {int irq_mask; int gt_irq_mask; TYPE_1__* dev; scalar_t__* pipestat; } ;
typedef  TYPE_2__ drm_i915_private_t ;
struct TYPE_4__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPINVGTT ; 
 int DPINVGTT_EN_MASK ; 
 int DPINVGTT_STATUS_MASK ; 
 int GEN6_BLITTER_USER_INTERRUPT ; 
 int GEN6_BSD_USER_INTERRUPT ; 
 int /*<<< orphan*/  GTIER ; 
 int /*<<< orphan*/  GTIIR ; 
 int /*<<< orphan*/  GTIMR ; 
 int GT_USER_INTERRUPT ; 
 int I915_DISPLAY_PIPE_A_EVENT_INTERRUPT ; 
 int I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT ; 
 int I915_DISPLAY_PIPE_B_EVENT_INTERRUPT ; 
 int I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT ; 
 int I915_DISPLAY_PORT_INTERRUPT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int MASTER_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int PIPE_GMBUS_EVENT_ENABLE ; 
 int PLANE_FLIP_DONE_INT_EN_VLV ; 
 int /*<<< orphan*/  PORT_HOTPLUG_EN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLV_IER ; 
 int /*<<< orphan*/  VLV_IIR ; 
 int /*<<< orphan*/  VLV_IMR ; 
 int /*<<< orphan*/  VLV_MASTER_IER ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	u32 enable_mask;
	u32 pipestat_enable = PLANE_FLIP_DONE_INT_EN_VLV;
	u32 render_irqs;
	u16 msid;

	enable_mask = I915_DISPLAY_PORT_INTERRUPT;
	enable_mask |= I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
		I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT |
		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
		I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT;

	/*
	 *Leave vblank interrupts masked initially.  enable/disable will
	 * toggle them based on usage.
	 */
	dev_priv->irq_mask = (~enable_mask) |
		I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT |
		I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT;

	dev_priv->pipestat[0] = 0;
	dev_priv->pipestat[1] = 0;

	/* Hack for broken MSIs on VLV */
	FUNC6(dev_priv->dev->pdev, 0x94, 0xfee00000);
	FUNC5(dev->pdev, 0x98, &msid);
	msid &= 0xff; /* mask out delivery bits */
	msid |= (1<<14);
	FUNC7(dev_priv->dev->pdev, 0x98, msid);

	FUNC1(PORT_HOTPLUG_EN, 0);
	FUNC3(PORT_HOTPLUG_EN);

	FUNC1(VLV_IMR, dev_priv->irq_mask);
	FUNC1(VLV_IER, enable_mask);
	FUNC1(VLV_IIR, 0xffffffff);
	FUNC1(FUNC2(0), 0xffff);
	FUNC1(FUNC2(1), 0xffff);
	FUNC3(VLV_IER);

	FUNC4(dev_priv, 0, pipestat_enable);
	FUNC4(dev_priv, 0, PIPE_GMBUS_EVENT_ENABLE);
	FUNC4(dev_priv, 1, pipestat_enable);

	FUNC1(VLV_IIR, 0xffffffff);
	FUNC1(VLV_IIR, 0xffffffff);

	FUNC1(GTIIR, FUNC0(GTIIR));
	FUNC1(GTIMR, dev_priv->gt_irq_mask);

	render_irqs = GT_USER_INTERRUPT | GEN6_BSD_USER_INTERRUPT |
		GEN6_BLITTER_USER_INTERRUPT;
	FUNC1(GTIER, render_irqs);
	FUNC3(GTIER);

	/* ack & enable invalid PTE error interrupts */
#if 0 /* FIXME: add support to irq handler for checking these bits */
	I915_WRITE(DPINVGTT, DPINVGTT_STATUS_MASK);
	I915_WRITE(DPINVGTT, DPINVGTT_EN_MASK);
#endif

	FUNC1(VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);

	return 0;
}