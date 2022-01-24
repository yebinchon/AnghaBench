#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  boxes; } ;
struct TYPE_6__ {int flags; int usec_timeout; TYPE_1__ stats; } ;
typedef  TYPE_2__ drm_radeon_private_t ;

/* Variables and functions */
 int CHIP_RV280 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  RADEON_BOX_WAIT_IDLE ; 
 int RADEON_FAMILY_MASK ; 
 int RADEON_RB3D_DC_BUSY ; 
 int RADEON_RB3D_DC_FLUSH_ALL ; 
 int /*<<< orphan*/  RADEON_RB3D_DSTCACHE_CTLSTAT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(drm_radeon_private_t * dev_priv)
{
	u32 tmp;
	int i;

	dev_priv->stats.boxes |= RADEON_BOX_WAIT_IDLE;

	if ((dev_priv->flags & RADEON_FAMILY_MASK) <= CHIP_RV280) {
		tmp = FUNC2(RADEON_RB3D_DSTCACHE_CTLSTAT);
		tmp |= RADEON_RB3D_DC_FLUSH_ALL;
		FUNC3(RADEON_RB3D_DSTCACHE_CTLSTAT, tmp);

		for (i = 0; i < dev_priv->usec_timeout; i++) {
			if (!(FUNC2(RADEON_RB3D_DSTCACHE_CTLSTAT)
			      & RADEON_RB3D_DC_BUSY)) {
				return 0;
			}
			FUNC1(1);
		}
	} else {
		/* don't flush or purge cache here or lockup */
		return 0;
	}

#if RADEON_FIFO_DEBUG
	DRM_ERROR("failed!\n");
	radeon_status(dev_priv);
#endif
	return -EBUSY;
}