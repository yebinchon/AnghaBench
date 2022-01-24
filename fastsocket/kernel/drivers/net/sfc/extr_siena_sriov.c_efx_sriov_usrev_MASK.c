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
struct efx_nic {TYPE_1__* vfdi_channel; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRF_CZ_DFLT_EVQ ; 
 int /*<<< orphan*/  FRF_CZ_USREV_DIS ; 
 int /*<<< orphan*/  FR_CZ_USR_EV_CFG ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct efx_nic *efx, bool enabled)
{
	efx_oword_t reg;

	FUNC0(reg,
			     FRF_CZ_USREV_DIS, enabled ? 0 : 1,
			     FRF_CZ_DFLT_EVQ, efx->vfdi_channel->channel);
	FUNC1(efx, &reg, FR_CZ_USR_EV_CFG);
}