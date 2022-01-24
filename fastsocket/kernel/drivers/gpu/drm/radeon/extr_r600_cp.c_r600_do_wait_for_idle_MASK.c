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
struct TYPE_5__ {int /*<<< orphan*/  boxes; } ;
struct TYPE_6__ {int flags; int usec_timeout; TYPE_1__ stats; } ;
typedef  TYPE_2__ drm_radeon_private_t ;

/* Variables and functions */
 int CHIP_RV770 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  R600_GRBM_STATUS ; 
 int /*<<< orphan*/  R600_GRBM_STATUS2 ; 
 int R600_GUI_ACTIVE ; 
 int /*<<< orphan*/  RADEON_BOX_WAIT_IDLE ; 
 int RADEON_FAMILY_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC4(drm_radeon_private_t *dev_priv)
{
	int i, ret;

	dev_priv->stats.boxes |= RADEON_BOX_WAIT_IDLE;

	if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV770)
		ret = FUNC3(dev_priv, 8);
	else
		ret = FUNC3(dev_priv, 16);
	if (ret)
		return ret;
	for (i = 0; i < dev_priv->usec_timeout; i++) {
		if (!(FUNC2(R600_GRBM_STATUS) & R600_GUI_ACTIVE))
			return 0;
		FUNC1(1);
	}
	FUNC0("wait idle failed status : 0x%08X 0x%08X\n",
		 FUNC2(R600_GRBM_STATUS),
		 FUNC2(R600_GRBM_STATUS2));

	return -EBUSY;
}