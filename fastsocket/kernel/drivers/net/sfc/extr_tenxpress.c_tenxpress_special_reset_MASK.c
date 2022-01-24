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
struct efx_nic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int PMA_PMD_EXT_SSR_LBN ; 
 int /*<<< orphan*/  PMA_PMD_XCONTROL_REG ; 
 int /*<<< orphan*/  TENXPRESS_REQUIRED_DEVS ; 
 int FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC7(struct efx_nic *efx)
{
	int rc, reg;

	/* The XGMAC clock is driven from the SFX7101 312MHz clock, so
	 * a special software reset can glitch the XGMAC sufficiently for stats
	 * requests to fail. */
	FUNC4(efx);

	/* Initiate reset */
	reg = FUNC0(efx, MDIO_MMD_PMAPMD, PMA_PMD_XCONTROL_REG);
	reg |= (1 << PMA_PMD_EXT_SSR_LBN);
	FUNC2(efx, MDIO_MMD_PMAPMD, PMA_PMD_XCONTROL_REG, reg);

	FUNC5(200);

	/* Wait for the blocks to come out of reset */
	rc = FUNC1(efx, TENXPRESS_REQUIRED_DEVS);
	if (rc < 0)
		goto out;

	/* Try and reconfigure the device */
	rc = FUNC6(efx);
	if (rc < 0)
		goto out;

	/* Wait for the XGXS state machine to churn */
	FUNC5(10);
out:
	FUNC3(efx);
	return rc;
}