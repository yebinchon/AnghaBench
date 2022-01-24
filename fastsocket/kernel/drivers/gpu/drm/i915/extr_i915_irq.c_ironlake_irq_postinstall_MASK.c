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
struct TYPE_3__ {int irq_mask; int gt_irq_mask; } ;
typedef  TYPE_1__ drm_i915_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEIER ; 
 int /*<<< orphan*/  DEIIR ; 
 int /*<<< orphan*/  DEIMR ; 
 int DE_AUX_CHANNEL_A ; 
 int DE_GSE ; 
 int DE_MASTER_IRQ_CONTROL ; 
 int DE_PCH_EVENT ; 
 int DE_PCU_EVENT ; 
 int DE_PIPEA_VBLANK ; 
 int DE_PIPEB_VBLANK ; 
 int DE_PLANEA_FLIP_DONE ; 
 int DE_PLANEB_FLIP_DONE ; 
 int GEN6_BLITTER_USER_INTERRUPT ; 
 int GEN6_BSD_USER_INTERRUPT ; 
 int /*<<< orphan*/  GTIER ; 
 int /*<<< orphan*/  GTIIR ; 
 int /*<<< orphan*/  GTIMR ; 
 int GT_BSD_USER_INTERRUPT ; 
 int GT_PIPE_NOTIFY ; 
 int GT_USER_INTERRUPT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
	/* enable kind of interrupts always enabled */
	u32 display_mask = DE_MASTER_IRQ_CONTROL | DE_GSE | DE_PCH_EVENT |
			   DE_PLANEA_FLIP_DONE | DE_PLANEB_FLIP_DONE |
			   DE_AUX_CHANNEL_A;
	u32 render_irqs;

	dev_priv->irq_mask = ~display_mask;

	/* should always can generate irq */
	FUNC1(DEIIR, FUNC0(DEIIR));
	FUNC1(DEIMR, dev_priv->irq_mask);
	FUNC1(DEIER, display_mask | DE_PIPEA_VBLANK | DE_PIPEB_VBLANK);
	FUNC4(DEIER);

	dev_priv->gt_irq_mask = ~0;

	FUNC1(GTIIR, FUNC0(GTIIR));
	FUNC1(GTIMR, dev_priv->gt_irq_mask);

	if (FUNC2(dev))
		render_irqs =
			GT_USER_INTERRUPT |
			GEN6_BSD_USER_INTERRUPT |
			GEN6_BLITTER_USER_INTERRUPT;
	else
		render_irqs =
			GT_USER_INTERRUPT |
			GT_PIPE_NOTIFY |
			GT_BSD_USER_INTERRUPT;
	FUNC1(GTIER, render_irqs);
	FUNC4(GTIER);

	FUNC5(dev);

	if (FUNC3(dev)) {
		/* Clear & enable PCU event interrupts */
		FUNC1(DEIIR, DE_PCU_EVENT);
		FUNC1(DEIER, FUNC0(DEIER) | DE_PCU_EVENT);
		FUNC6(dev_priv, DE_PCU_EVENT);
	}

	return 0;
}