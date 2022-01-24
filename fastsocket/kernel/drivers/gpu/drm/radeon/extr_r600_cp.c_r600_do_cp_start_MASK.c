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
typedef  int u32 ;
struct TYPE_3__ {int flags; int r600_max_hw_contexts; int cp_running; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CHIP_RV770 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  R600_CP_ME_CNTL ; 
 int /*<<< orphan*/  R600_IT_ME_INITIALIZE ; 
 int FUNC6 (int) ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RING_LOCALS ; 

void FUNC8(drm_radeon_private_t *dev_priv)
{
	u32 cp_me;
	RING_LOCALS;
	FUNC4("\n");

	FUNC1(7);
	FUNC5(FUNC3(R600_IT_ME_INITIALIZE, 5));
	FUNC5(0x00000001);
	if (((dev_priv->flags & RADEON_FAMILY_MASK) < CHIP_RV770))
		FUNC5(0x00000003);
	else
		FUNC5(0x00000000);
	FUNC5((dev_priv->r600_max_hw_contexts - 1));
	FUNC5(FUNC6(1));
	FUNC5(0x00000000);
	FUNC5(0x00000000);
	FUNC0();
	FUNC2();

	/* set the mux and reset the halt bit */
	cp_me = 0xff;
	FUNC7(R600_CP_ME_CNTL, cp_me);

	dev_priv->cp_running = 1;

}