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
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARRAY_1D_TILED_THIN1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_RESOURCE ; 
 int /*<<< orphan*/  PACKET3_TC_ACTION_ENA ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  SQ_SEL_W ; 
 int /*<<< orphan*/  SQ_SEL_X ; 
 int /*<<< orphan*/  SQ_SEL_Y ; 
 int /*<<< orphan*/  SQ_SEL_Z ; 
 int /*<<< orphan*/  SQ_TEX_DIM_2D ; 
 int /*<<< orphan*/  SQ_TEX_VTX_VALID_TEXTURE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_ring*,int) ; 

__attribute__((used)) static void
FUNC10(struct radeon_device *rdev,
		 int format, int w, int h, int pitch,
		 u64 gpu_addr, u32 size)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	u32 sq_tex_resource_word0, sq_tex_resource_word1;
	u32 sq_tex_resource_word4, sq_tex_resource_word7;

	if (h < 1)
		h = 1;

	sq_tex_resource_word0 = FUNC3(SQ_TEX_DIM_2D);
	sq_tex_resource_word0 |= ((((pitch >> 3) - 1) << 6) |
				  ((w - 1) << 18));
	sq_tex_resource_word1 = ((h - 1) << 0) |
				FUNC2(ARRAY_1D_TILED_THIN1);
	/* xyzw swizzles */
	sq_tex_resource_word4 = FUNC5(SQ_SEL_X) |
				FUNC6(SQ_SEL_Y) |
				FUNC7(SQ_SEL_Z) |
				FUNC4(SQ_SEL_W);

	sq_tex_resource_word7 = format |
		FUNC1(SQ_TEX_VTX_VALID_TEXTURE);

	FUNC8(rdev,
			    PACKET3_TC_ACTION_ENA, size, gpu_addr);

	FUNC9(ring, FUNC0(PACKET3_SET_RESOURCE, 8));
	FUNC9(ring, 0);
	FUNC9(ring, sq_tex_resource_word0);
	FUNC9(ring, sq_tex_resource_word1);
	FUNC9(ring, gpu_addr >> 8);
	FUNC9(ring, gpu_addr >> 8);
	FUNC9(ring, sq_tex_resource_word4);
	FUNC9(ring, 0);
	FUNC9(ring, 0);
	FUNC9(ring, sq_tex_resource_word7);
}