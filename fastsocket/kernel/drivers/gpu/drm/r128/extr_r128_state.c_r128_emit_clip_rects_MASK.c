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
typedef  int u32 ;
struct drm_clip_rect {int x1; int x2; int y1; int y2; } ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int R128_AUX1_SC_EN ; 
 int /*<<< orphan*/  R128_AUX1_SC_LEFT ; 
 int R128_AUX1_SC_MODE_OR ; 
 int R128_AUX2_SC_EN ; 
 int /*<<< orphan*/  R128_AUX2_SC_LEFT ; 
 int R128_AUX2_SC_MODE_OR ; 
 int R128_AUX3_SC_EN ; 
 int /*<<< orphan*/  R128_AUX3_SC_LEFT ; 
 int R128_AUX3_SC_MODE_OR ; 
 int /*<<< orphan*/  R128_AUX_SC_CNTL ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static void FUNC5(drm_r128_private_t *dev_priv,
				 struct drm_clip_rect *boxes, int count)
{
	u32 aux_sc_cntl = 0x00000000;
	RING_LOCALS;
	FUNC3("\n");

	FUNC1((count < 3 ? count : 3) * 5 + 2);

	if (count >= 1) {
		FUNC4(FUNC2(R128_AUX1_SC_LEFT, 3));
		FUNC4(boxes[0].x1);
		FUNC4(boxes[0].x2 - 1);
		FUNC4(boxes[0].y1);
		FUNC4(boxes[0].y2 - 1);

		aux_sc_cntl |= (R128_AUX1_SC_EN | R128_AUX1_SC_MODE_OR);
	}
	if (count >= 2) {
		FUNC4(FUNC2(R128_AUX2_SC_LEFT, 3));
		FUNC4(boxes[1].x1);
		FUNC4(boxes[1].x2 - 1);
		FUNC4(boxes[1].y1);
		FUNC4(boxes[1].y2 - 1);

		aux_sc_cntl |= (R128_AUX2_SC_EN | R128_AUX2_SC_MODE_OR);
	}
	if (count >= 3) {
		FUNC4(FUNC2(R128_AUX3_SC_LEFT, 3));
		FUNC4(boxes[2].x1);
		FUNC4(boxes[2].x2 - 1);
		FUNC4(boxes[2].y1);
		FUNC4(boxes[2].y2 - 1);

		aux_sc_cntl |= (R128_AUX3_SC_EN | R128_AUX3_SC_MODE_OR);
	}

	FUNC4(FUNC2(R128_AUX_SC_CNTL, 0));
	FUNC4(aux_sc_cntl);

	FUNC0();
}