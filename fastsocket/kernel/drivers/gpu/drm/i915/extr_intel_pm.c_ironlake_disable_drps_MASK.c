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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  fstart; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEIER ; 
 int /*<<< orphan*/  DEIIR ; 
 int /*<<< orphan*/  DEIMR ; 
 int DE_PCU_EVENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int MEMCTL_CMD_STS ; 
 int /*<<< orphan*/  MEMINTREN ; 
 int /*<<< orphan*/  MEMINTRSTS ; 
 int MEMINT_EVAL_CHG ; 
 int MEMINT_EVAL_CHG_EN ; 
 int /*<<< orphan*/  MEMSWCTL ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mchdev_lock ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u16 rgvswctl;

	FUNC5(&mchdev_lock);

	rgvswctl = FUNC1(MEMSWCTL);

	/* Ack interrupts, disable EFC interrupt */
	FUNC2(MEMINTREN, FUNC0(MEMINTREN) & ~MEMINT_EVAL_CHG_EN);
	FUNC2(MEMINTRSTS, MEMINT_EVAL_CHG);
	FUNC2(DEIER, FUNC0(DEIER) & ~DE_PCU_EVENT);
	FUNC2(DEIIR, DE_PCU_EVENT);
	FUNC2(DEIMR, FUNC0(DEIMR) | DE_PCU_EVENT);

	/* Go back to the starting frequency */
	FUNC3(dev, dev_priv->ips.fstart);
	FUNC4(1);
	rgvswctl |= MEMCTL_CMD_STS;
	FUNC2(MEMSWCTL, rgvswctl);
	FUNC4(1);

	FUNC6(&mchdev_lock);
}