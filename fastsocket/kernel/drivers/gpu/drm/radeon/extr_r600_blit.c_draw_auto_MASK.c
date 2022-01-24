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
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int DI_INDEX_SIZE_16_BIT ; 
 int DI_PT_RECTLIST ; 
 int DI_SRC_SEL_AUTO_INDEX ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  R600_IT_DRAW_INDEX_AUTO ; 
 int /*<<< orphan*/  R600_IT_INDEX_TYPE ; 
 int /*<<< orphan*/  R600_IT_NUM_INSTANCES ; 
 int /*<<< orphan*/  R600_IT_SET_CONFIG_REG ; 
 int R600_SET_CONFIG_REG_OFFSET ; 
 int R600_VGT_PRIMITIVE_TYPE ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static void
FUNC6(drm_radeon_private_t *dev_priv)
{
	RING_LOCALS;
	FUNC4("\n");

	FUNC1(10);
	FUNC5(FUNC3(R600_IT_SET_CONFIG_REG, 1));
	FUNC5((R600_VGT_PRIMITIVE_TYPE - R600_SET_CONFIG_REG_OFFSET) >> 2);
	FUNC5(DI_PT_RECTLIST);

	FUNC5(FUNC3(R600_IT_INDEX_TYPE, 0));
#ifdef __BIG_ENDIAN
	OUT_RING((2 << 2) | DI_INDEX_SIZE_16_BIT);
#else
	FUNC5(DI_INDEX_SIZE_16_BIT);
#endif

	FUNC5(FUNC3(R600_IT_NUM_INSTANCES, 0));
	FUNC5(1);

	FUNC5(FUNC3(R600_IT_DRAW_INDEX_AUTO, 1));
	FUNC5(3);
	FUNC5(DI_SRC_SEL_AUTO_INDEX);

	FUNC0();
	FUNC2();
}