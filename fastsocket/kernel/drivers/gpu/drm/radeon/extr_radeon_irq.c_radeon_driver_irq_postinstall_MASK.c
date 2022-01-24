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
struct drm_device {int max_vblank_count; scalar_t__ dev_private; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  swi_queue; int /*<<< orphan*/  swi_emitted; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int CHIP_R600 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  RADEON_SW_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct drm_device *dev)
{
	drm_radeon_private_t *dev_priv =
	    (drm_radeon_private_t *) dev->dev_private;

	FUNC1(&dev_priv->swi_emitted, 0);
	FUNC0(&dev_priv->swi_queue);

	dev->max_vblank_count = 0x001fffff;

	if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
		return 0;

	FUNC2(dev, RADEON_SW_INT_ENABLE, 1);

	return 0;
}