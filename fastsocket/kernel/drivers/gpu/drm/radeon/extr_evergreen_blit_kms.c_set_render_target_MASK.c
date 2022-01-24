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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  ARRAY_1D_TILED_THIN1 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int CB_COLOR0_BASE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  CB_SF_EXPORT_NORM ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_CONTEXT_REG ; 
 int PACKET3_SET_CONTEXT_REG_START ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_ring*,int) ; 

__attribute__((used)) static void
FUNC6(struct radeon_device *rdev, int format,
		  int w, int h, u64 gpu_addr)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	u32 cb_color_info;
	int pitch, slice;

	h = FUNC0(h, 8);
	if (h < 8)
		h = 8;

	cb_color_info = FUNC2(format) |
		FUNC3(CB_SF_EXPORT_NORM) |
		FUNC1(ARRAY_1D_TILED_THIN1);
	pitch = (w / 8) - 1;
	slice = ((w * h) / 64) - 1;

	FUNC5(ring, FUNC4(PACKET3_SET_CONTEXT_REG, 15));
	FUNC5(ring, (CB_COLOR0_BASE - PACKET3_SET_CONTEXT_REG_START) >> 2);
	FUNC5(ring, gpu_addr >> 8);
	FUNC5(ring, pitch);
	FUNC5(ring, slice);
	FUNC5(ring, 0);
	FUNC5(ring, cb_color_info);
	FUNC5(ring, 0);
	FUNC5(ring, (w - 1) | ((h - 1) << 16));
	FUNC5(ring, 0);
	FUNC5(ring, 0);
	FUNC5(ring, 0);
	FUNC5(ring, 0);
	FUNC5(ring, 0);
	FUNC5(ring, 0);
	FUNC5(ring, 0);
	FUNC5(ring, 0);
}