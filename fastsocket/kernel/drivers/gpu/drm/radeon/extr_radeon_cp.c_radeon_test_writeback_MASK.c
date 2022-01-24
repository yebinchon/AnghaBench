#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int writeback_works; scalar_t__ usec_timeout; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RADEON_CP_RB_CNTL ; 
 int RADEON_RB_NO_UPDATE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  RADEON_SCRATCH_REG1 ; 
 int /*<<< orphan*/  RADEON_SCRATCH_UMSK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int radeon_no_wb ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(drm_radeon_private_t * dev_priv)
{
	u32 tmp;

	/* Start with assuming that writeback doesn't work */
	dev_priv->writeback_works = 0;

	/* Writeback doesn't seem to work everywhere, test it here and possibly
	 * enable it if it appears to work
	 */
	FUNC6(dev_priv, FUNC3(1), 0);

	FUNC4(RADEON_SCRATCH_REG1, 0xdeadbeef);

	for (tmp = 0; tmp < dev_priv->usec_timeout; tmp++) {
		u32 val;

		val = FUNC5(dev_priv, FUNC3(1));
		if (val == 0xdeadbeef)
			break;
		FUNC1(1);
	}

	if (tmp < dev_priv->usec_timeout) {
		dev_priv->writeback_works = 1;
		FUNC0("writeback test succeeded in %d usecs\n", tmp);
	} else {
		dev_priv->writeback_works = 0;
		FUNC0("writeback test failed\n");
	}
	if (radeon_no_wb == 1) {
		dev_priv->writeback_works = 0;
		FUNC0("writeback forced off\n");
	}

	if (!dev_priv->writeback_works) {
		/* Disable writeback to avoid unnecessary bus master transfer */
		FUNC4(RADEON_CP_RB_CNTL, FUNC2(RADEON_CP_RB_CNTL) |
			     RADEON_RB_NO_UPDATE);
		FUNC4(RADEON_SCRATCH_UMSK, 0);
	}
}