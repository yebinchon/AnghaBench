#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int CHIP_R600 ; 
 int CHIP_RV770 ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int R600_CB_COLOR0_BASE ; 
 int R600_CB_COLOR0_FRAG ; 
 int R600_CB_COLOR0_INFO ; 
 int R600_CB_COLOR0_MASK ; 
 int R600_CB_COLOR0_SIZE ; 
 int R600_CB_COLOR0_TILE ; 
 int R600_CB_COLOR0_VIEW ; 
 int /*<<< orphan*/  R600_IT_SET_CONTEXT_REG ; 
 int /*<<< orphan*/  R600_IT_SURFACE_BASE_UPDATE ; 
 int R600_SET_CONTEXT_REG_OFFSET ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static void
FUNC6(drm_radeon_private_t *dev_priv, int format, int w, int h, u64 gpu_addr)
{
	u32 cb_color_info;
	int pitch, slice;
	RING_LOCALS;
	FUNC4("\n");

	h = FUNC1(h, 8);
	if (h < 8)
		h = 8;

	cb_color_info = ((format << 2) | (1 << 27));
	pitch = (w / 8) - 1;
	slice = ((w * h) / 64) - 1;

	if (((dev_priv->flags & RADEON_FAMILY_MASK) > CHIP_R600) &&
	    ((dev_priv->flags & RADEON_FAMILY_MASK) < CHIP_RV770)) {
		FUNC2(21 + 2);
		FUNC5(FUNC3(R600_IT_SET_CONTEXT_REG, 1));
		FUNC5((R600_CB_COLOR0_BASE - R600_SET_CONTEXT_REG_OFFSET) >> 2);
		FUNC5(gpu_addr >> 8);
		FUNC5(FUNC3(R600_IT_SURFACE_BASE_UPDATE, 0));
		FUNC5(2 << 0);
	} else {
		FUNC2(21);
		FUNC5(FUNC3(R600_IT_SET_CONTEXT_REG, 1));
		FUNC5((R600_CB_COLOR0_BASE - R600_SET_CONTEXT_REG_OFFSET) >> 2);
		FUNC5(gpu_addr >> 8);
	}

	FUNC5(FUNC3(R600_IT_SET_CONTEXT_REG, 1));
	FUNC5((R600_CB_COLOR0_SIZE - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC5((pitch << 0) | (slice << 10));

	FUNC5(FUNC3(R600_IT_SET_CONTEXT_REG, 1));
	FUNC5((R600_CB_COLOR0_VIEW - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC5(0);

	FUNC5(FUNC3(R600_IT_SET_CONTEXT_REG, 1));
	FUNC5((R600_CB_COLOR0_INFO - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC5(cb_color_info);

	FUNC5(FUNC3(R600_IT_SET_CONTEXT_REG, 1));
	FUNC5((R600_CB_COLOR0_TILE - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC5(0);

	FUNC5(FUNC3(R600_IT_SET_CONTEXT_REG, 1));
	FUNC5((R600_CB_COLOR0_FRAG - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC5(0);

	FUNC5(FUNC3(R600_IT_SET_CONTEXT_REG, 1));
	FUNC5((R600_CB_COLOR0_MASK - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC5(0);

	FUNC0();
}