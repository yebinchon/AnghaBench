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
 unsigned int ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int FUNC1 (struct efx_nic*) ; 

__attribute__((used)) static int
FUNC2(struct efx_nic *efx, int *results, unsigned flags)
{
	int rc;

	if (!(flags & ETH_TEST_FL_OFFLINE))
		return 0;

	/* BIST is automatically run after a special software reset */
	rc = FUNC1(efx);
	results[0] = rc ? -1 : 1;

	FUNC0(efx);

	return rc;
}