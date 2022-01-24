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
struct efx_nic {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  phy_mode; } ;

/* Variables and functions */
 int FUNC0 (struct efx_nic*) ; 
 int LOOPBACKS_WS ; 
 int FUNC1 (struct efx_nic*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int FUNC6 (struct efx_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static bool FUNC9(struct efx_nic *efx, int tries)
{
	bool mac_up = FUNC6(efx);

	if (FUNC1(efx) & FUNC0(efx) & LOOPBACKS_WS ||
	    FUNC2(efx->phy_mode))
		/* XAUI link is expected to be down */
		return mac_up;

	FUNC5(efx);

	while (!mac_up && tries) {
		FUNC7(efx, hw, efx->net_dev, "bashing xaui\n");
		FUNC3(efx);
		FUNC8(200);

		mac_up = FUNC6(efx);
		--tries;
	}

	FUNC4(efx);

	return mac_up;
}