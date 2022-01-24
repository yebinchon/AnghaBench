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
struct TYPE_4__ {int /*<<< orphan*/  boxes; } ;
struct TYPE_5__ {int usec_timeout; int flags; TYPE_1__ stats; } ;
typedef  TYPE_2__ drm_radeon_private_t ;

/* Variables and functions */
 int CHIP_RV770 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int R600_CMDFIFO_AVAIL_MASK ; 
 int /*<<< orphan*/  R600_GRBM_STATUS ; 
 int /*<<< orphan*/  R600_GRBM_STATUS2 ; 
 int R700_CMDFIFO_AVAIL_MASK ; 
 int /*<<< orphan*/  RADEON_BOX_WAIT_IDLE ; 
 int RADEON_FAMILY_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(drm_radeon_private_t *dev_priv, int entries)
{
	int i;

	dev_priv->stats.boxes |= RADEON_BOX_WAIT_IDLE;

	for (i = 0; i < dev_priv->usec_timeout; i++) {
		int slots;
		if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV770)
			slots = (FUNC2(R600_GRBM_STATUS)
				 & R700_CMDFIFO_AVAIL_MASK);
		else
			slots = (FUNC2(R600_GRBM_STATUS)
				 & R600_CMDFIFO_AVAIL_MASK);
		if (slots >= entries)
			return 0;
		FUNC1(1);
	}
	FUNC0("wait for fifo failed status : 0x%08X 0x%08X\n",
		 FUNC2(R600_GRBM_STATUS),
		 FUNC2(R600_GRBM_STATUS2));

	return -EBUSY;
}