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
struct efx_nic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MDIO_CTRL1 ; 
 int MDIO_CTRL1_RESET ; 
 int FUNC1 (struct efx_nic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct efx_nic *port, int mmd,
			    int spins, int spintime)
{
	u32 ctrl;

	/* Catch callers passing values in the wrong units (or just silly) */
	FUNC0(spins * spintime >= 5000);

	FUNC2(port, mmd, MDIO_CTRL1, MDIO_CTRL1_RESET);
	/* Wait for the reset bit to clear. */
	do {
		FUNC3(spintime);
		ctrl = FUNC1(port, mmd, MDIO_CTRL1);
		spins--;

	} while (spins && (ctrl & MDIO_CTRL1_RESET));

	return spins ? spins : -ETIMEDOUT;
}