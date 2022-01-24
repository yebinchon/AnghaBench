#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_ring {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int DI_INDEX_SIZE_16_BIT ; 
 int DI_PT_RECTLIST ; 
 int DI_SRC_SEL_AUTO_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_DRAW_INDEX_AUTO ; 
 int /*<<< orphan*/  PACKET3_INDEX_TYPE ; 
 int /*<<< orphan*/  PACKET3_NUM_INSTANCES ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_START ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int VGT_PRIMITIVE_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 

__attribute__((used)) static void
FUNC2(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	FUNC1(ring, FUNC0(PACKET3_SET_CONFIG_REG, 1));
	FUNC1(ring, (VGT_PRIMITIVE_TYPE - PACKET3_SET_CONFIG_REG_START) >> 2);
	FUNC1(ring, DI_PT_RECTLIST);

	FUNC1(ring, FUNC0(PACKET3_INDEX_TYPE, 0));
	FUNC1(ring,
#ifdef __BIG_ENDIAN
			  (2 << 2) |
#endif
			  DI_INDEX_SIZE_16_BIT);

	FUNC1(ring, FUNC0(PACKET3_NUM_INSTANCES, 0));
	FUNC1(ring, 1);

	FUNC1(ring, FUNC0(PACKET3_DRAW_INDEX_AUTO, 1));
	FUNC1(ring, 3);
	FUNC1(ring, DI_SRC_SEL_AUTO_INDEX);

}