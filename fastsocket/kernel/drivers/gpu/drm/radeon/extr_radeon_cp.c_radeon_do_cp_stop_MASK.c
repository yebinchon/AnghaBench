#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; scalar_t__ cp_running; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CHIP_R420 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R300_RB3D_DC_FINISH ; 
 int /*<<< orphan*/  R300_RB3D_DSTCACHE_CTLSTAT ; 
 int /*<<< orphan*/  RADEON_CP_CSQ_CNTL ; 
 int /*<<< orphan*/  RADEON_CSQ_PRIDIS_INDDIS ; 
 int RADEON_FAMILY_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(drm_radeon_private_t * dev_priv)
{
	RING_LOCALS;
	FUNC4("\n");

	/* finish the pending CP_RESYNC token */
	if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_R420) {
		FUNC1(2);
		FUNC5(FUNC3(R300_RB3D_DSTCACHE_CTLSTAT, 0));
		FUNC5(R300_RB3D_DC_FINISH);
		FUNC0();
		FUNC2();
		FUNC7(dev_priv);
	}

	FUNC6(RADEON_CP_CSQ_CNTL, RADEON_CSQ_PRIDIS_INDDIS);

	dev_priv->cp_running = 0;
}