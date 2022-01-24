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
struct TYPE_5__ {int /*<<< orphan*/  track_flush; } ;
typedef  TYPE_1__ drm_radeon_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ drm_radeon_kcmd_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  R200_3D_DRAW_IMMD_2 ; 
 int R300_PRIM_NUM_VERTICES_SHIFT ; 
 int R300_PRIM_TYPE_POINT ; 
 int R300_PRIM_WALK_RING ; 
 int R300_RB3D_DC_FLUSH ; 
 int /*<<< orphan*/  R300_RB3D_DSTCACHE_CTLSTAT ; 
 int /*<<< orphan*/  RADEON_FLUSH_EMITED ; 
 int RADEON_WAIT_3D_IDLECLEAN ; 
 int /*<<< orphan*/  RADEON_WAIT_UNTIL ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ int FUNC7(drm_radeon_private_t *dev_priv,
				      drm_radeon_kcmd_buffer_t *cmdbuf)
{
	RING_LOCALS;

	if (8 * 4 > FUNC6(cmdbuf->buffer))
		return -EINVAL;

	FUNC1(10);
	FUNC4(FUNC3(R200_3D_DRAW_IMMD_2, 8));
	FUNC4(R300_PRIM_TYPE_POINT | R300_PRIM_WALK_RING |
		 (1 << R300_PRIM_NUM_VERTICES_SHIFT));
	FUNC5(cmdbuf->buffer, 8);
	FUNC0();

	FUNC1(4);
	FUNC4(FUNC2(R300_RB3D_DSTCACHE_CTLSTAT, 0));
	FUNC4(R300_RB3D_DC_FLUSH);
	FUNC4(FUNC2(RADEON_WAIT_UNTIL, 0));
	FUNC4(RADEON_WAIT_3D_IDLECLEAN);
	FUNC0();
	/* set flush flag */
	dev_priv->track_flush |= RADEON_FLUSH_EMITED;

	return 0;
}