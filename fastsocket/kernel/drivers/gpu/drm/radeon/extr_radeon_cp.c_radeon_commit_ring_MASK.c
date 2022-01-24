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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int tail; int space; int tail_mask; int /*<<< orphan*/ * start; } ;
struct TYPE_6__ {int flags; TYPE_1__ ring; } ;
typedef  TYPE_2__ drm_radeon_private_t ;

/* Variables and functions */
 int CHIP_R600 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  R600_CP_RB_RPTR ; 
 int /*<<< orphan*/  R600_CP_RB_WPTR ; 
 int /*<<< orphan*/  RADEON_CP_RB_RPTR ; 
 int /*<<< orphan*/  RADEON_CP_RB_WPTR ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int RADEON_RING_ALIGN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(drm_radeon_private_t *dev_priv)
{
	int i;
	u32 *ring;
	int tail_aligned;

	/* check if the ring is padded out to 16-dword alignment */

	tail_aligned = dev_priv->ring.tail & (RADEON_RING_ALIGN-1);
	if (tail_aligned) {
		int num_p2 = RADEON_RING_ALIGN - tail_aligned;

		ring = dev_priv->ring.start;
		/* pad with some CP_PACKET2 */
		for (i = 0; i < num_p2; i++)
			ring[dev_priv->ring.tail + i] = FUNC0();

		dev_priv->ring.tail += i;

		dev_priv->ring.space -= num_p2 * sizeof(u32);
	}

	dev_priv->ring.tail &= dev_priv->ring.tail_mask;

	FUNC1();
	FUNC2( dev_priv );

	if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600) {
		FUNC4(R600_CP_RB_WPTR, dev_priv->ring.tail);
		/* read from PCI bus to ensure correct posting */
		FUNC3(R600_CP_RB_RPTR);
	} else {
		FUNC4(RADEON_CP_RB_WPTR, dev_priv->ring.tail);
		/* read from PCI bus to ensure correct posting */
		FUNC3(RADEON_CP_RB_RPTR);
	}
}