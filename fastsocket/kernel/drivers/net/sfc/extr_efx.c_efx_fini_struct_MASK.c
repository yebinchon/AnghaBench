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
struct efx_nic {int /*<<< orphan*/ * workqueue; int /*<<< orphan*/ * channel; } ;

/* Variables and functions */
 int EFX_MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct efx_nic *efx)
{
	int i;

	for (i = 0; i < EFX_MAX_CHANNELS; i++)
		FUNC1(efx->channel[i]);

	if (efx->workqueue) {
		FUNC0(efx->workqueue);
		efx->workqueue = NULL;
	}
}