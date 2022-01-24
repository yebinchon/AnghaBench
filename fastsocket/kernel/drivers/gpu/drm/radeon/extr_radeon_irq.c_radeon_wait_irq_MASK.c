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
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  boxes; } ;
struct TYPE_4__ {int /*<<< orphan*/  swi_queue; TYPE_1__ stats; } ;
typedef  TYPE_2__ drm_radeon_private_t ;

/* Variables and functions */
 int DRM_HZ ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  RADEON_BOX_WAIT_IDLE ; 
 int /*<<< orphan*/  RADEON_LAST_SWI_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drm_device * dev, int swi_nr)
{
	drm_radeon_private_t *dev_priv =
	    (drm_radeon_private_t *) dev->dev_private;
	int ret = 0;

	if (FUNC1(RADEON_LAST_SWI_REG) >= swi_nr)
		return 0;

	dev_priv->stats.boxes |= RADEON_BOX_WAIT_IDLE;

	FUNC0(ret, dev_priv->swi_queue, 3 * DRM_HZ,
		    FUNC1(RADEON_LAST_SWI_REG) >= swi_nr);

	return ret;
}