#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct efx_nic {scalar_t__ state; TYPE_1__* type; int /*<<< orphan*/  reset_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fini ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ STATE_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 

__attribute__((used)) static void FUNC8(struct efx_nic *efx)
{
	/* Flush reset_work. It can no longer be scheduled since we
	 * are not READY.
	 */
	FUNC0(efx->state == STATE_READY);
	FUNC1(&efx->reset_work);

	FUNC6(efx, false);
	FUNC4(efx);
	FUNC3(efx);
	efx->type->fini(efx);
	FUNC2(efx);
	FUNC5(efx);
}