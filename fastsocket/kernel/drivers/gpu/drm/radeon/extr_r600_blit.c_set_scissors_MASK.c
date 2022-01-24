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
typedef  int /*<<< orphan*/  drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  R600_IT_SET_CONTEXT_REG ; 
 int R600_PA_SC_GENERIC_SCISSOR_TL ; 
 int R600_PA_SC_SCREEN_SCISSOR_TL ; 
 int R600_PA_SC_WINDOW_SCISSOR_TL ; 
 int R600_SET_CONTEXT_REG_OFFSET ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static void
FUNC5(drm_radeon_private_t *dev_priv, int x1, int y1, int x2, int y2)
{
	RING_LOCALS;
	FUNC3("\n");

	FUNC1(12);
	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 2));
	FUNC4((R600_PA_SC_SCREEN_SCISSOR_TL - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4((x1 << 0) | (y1 << 16));
	FUNC4((x2 << 0) | (y2 << 16));

	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 2));
	FUNC4((R600_PA_SC_GENERIC_SCISSOR_TL - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4((x1 << 0) | (y1 << 16) | (1 << 31));
	FUNC4((x2 << 0) | (y2 << 16));

	FUNC4(FUNC2(R600_IT_SET_CONTEXT_REG, 2));
	FUNC4((R600_PA_SC_WINDOW_SCISSOR_TL - R600_SET_CONTEXT_REG_OFFSET) >> 2);
	FUNC4((x1 << 0) | (y1 << 16) | (1 << 31));
	FUNC4((x2 << 0) | (y2 << 16));
	FUNC0();
}