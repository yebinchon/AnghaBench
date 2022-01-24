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
 int /*<<< orphan*/  LNPGA_PDOWN_WAIT ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int PMA_PMD_LNPGA_POWERDOWN_LBN ; 
 int /*<<< orphan*/  PMA_PMD_XCONTROL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct efx_nic *efx)
{
	int reg;

	/* Power down the LNPGA */
	reg = (1 << PMA_PMD_LNPGA_POWERDOWN_LBN);
	FUNC0(efx, MDIO_MMD_PMAPMD, PMA_PMD_XCONTROL_REG, reg);

	/* Waiting here ensures that the board fini, which can turn
	 * off the power to the PHY, won't get run until the LNPGA
	 * powerdown has been given long enough to complete. */
	FUNC1(LNPGA_PDOWN_WAIT); /* 200 ms */
}