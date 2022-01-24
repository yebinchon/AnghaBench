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
typedef  int u64 ;
typedef  int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_device {scalar_t__ family; struct radeon_ring* ring; } ;

/* Variables and functions */
 scalar_t__ CHIP_CAICOS ; 
 scalar_t__ CHIP_CEDAR ; 
 scalar_t__ CHIP_PALM ; 
 scalar_t__ CHIP_SUMO ; 
 scalar_t__ CHIP_SUMO2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_RESOURCE ; 
 int /*<<< orphan*/  PACKET3_TC_ACTION_ENA ; 
 int /*<<< orphan*/  PACKET3_VC_ACTION_ENA ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  SQ_ENDIAN_8IN32 ; 
 int /*<<< orphan*/  SQ_SEL_W ; 
 int /*<<< orphan*/  SQ_SEL_X ; 
 int /*<<< orphan*/  SQ_SEL_Y ; 
 int /*<<< orphan*/  SQ_SEL_Z ; 
 int /*<<< orphan*/  SQ_TEX_VTX_VALID_BUFFER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_ring*,int) ; 
 int FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(struct radeon_device *rdev, u64 gpu_addr)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	u32 sq_vtx_constant_word2, sq_vtx_constant_word3;

	/* high addr, stride */
	sq_vtx_constant_word2 = FUNC5(FUNC11(gpu_addr) & 0xff) |
		FUNC7(16);
#ifdef __BIG_ENDIAN
	sq_vtx_constant_word2 |= SQ_VTXC_ENDIAN_SWAP(SQ_ENDIAN_8IN32);
#endif
	/* xyzw swizzles */
	sq_vtx_constant_word3 = FUNC2(SQ_SEL_X) |
		FUNC3(SQ_SEL_Y) |
		FUNC4(SQ_SEL_Z) |
		FUNC1(SQ_SEL_W);

	FUNC10(ring, FUNC0(PACKET3_SET_RESOURCE, 8));
	FUNC10(ring, 0x580);
	FUNC10(ring, gpu_addr & 0xffffffff);
	FUNC10(ring, 48 - 1); /* size */
	FUNC10(ring, sq_vtx_constant_word2);
	FUNC10(ring, sq_vtx_constant_word3);
	FUNC10(ring, 0);
	FUNC10(ring, 0);
	FUNC10(ring, 0);
	FUNC10(ring, FUNC8(SQ_TEX_VTX_VALID_BUFFER));

	if ((rdev->family == CHIP_CEDAR) ||
	    (rdev->family == CHIP_PALM) ||
	    (rdev->family == CHIP_SUMO) ||
	    (rdev->family == CHIP_SUMO2) ||
	    (rdev->family == CHIP_CAICOS))
		FUNC9(rdev,
				    PACKET3_TC_ACTION_ENA, 48, gpu_addr);
	else
		FUNC9(rdev,
				    PACKET3_VC_ACTION_ENA, 48, gpu_addr);

}