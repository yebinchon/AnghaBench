#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {int num_pch_pll; TYPE_1__* pch_plls; } ;
typedef  TYPE_2__ drm_i915_private_t ;
struct TYPE_3__ {int /*<<< orphan*/  fp1_reg; int /*<<< orphan*/  fp0_reg; int /*<<< orphan*/  pll_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	int i;

	if (dev_priv->num_pch_pll == 0) {
		FUNC0("No PCH PLLs on this hardware, skipping initialisation\n");
		return;
	}

	for (i = 0; i < dev_priv->num_pch_pll; i++) {
		dev_priv->pch_plls[i].pll_reg = FUNC1(i);
		dev_priv->pch_plls[i].fp0_reg = FUNC2(i);
		dev_priv->pch_plls[i].fp1_reg = FUNC3(i);
	}
}