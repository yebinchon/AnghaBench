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
struct efx_nic {int /*<<< orphan*/  mac_work; int /*<<< orphan*/  monitor_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 

__attribute__((used)) static void FUNC3(struct efx_nic *efx)
{
	/* Make sure the hardware monitor and event self-test are stopped */
	FUNC0(&efx->monitor_work);
	FUNC2(efx);
	/* Stop scheduled port reconfigurations */
	FUNC1(&efx->mac_work);
}