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
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  swi_emitted; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  RADEON_GEN_INT_STATUS ; 
 int /*<<< orphan*/  RADEON_LAST_SWI_REG ; 
 unsigned int RADEON_SW_INT_FIRE ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct drm_device * dev)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	unsigned int ret;
	RING_LOCALS;

	FUNC4(&dev_priv->swi_emitted);
	ret = FUNC5(&dev_priv->swi_emitted);

	FUNC1(4);
	FUNC3(RADEON_LAST_SWI_REG, ret);
	FUNC3(RADEON_GEN_INT_STATUS, RADEON_SW_INT_FIRE);
	FUNC0();
	FUNC2();

	return ret;
}