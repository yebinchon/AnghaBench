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
struct TYPE_2__ {int up; int speed; int fd; int /*<<< orphan*/  fc; } ;
struct efx_nic {scalar_t__ phy_type; TYPE_1__ link_state; int /*<<< orphan*/  wanted_fc; } ;

/* Variables and functions */
 scalar_t__ PHY_TYPE_QT2025C ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int FUNC1 (struct efx_nic*) ; 

__attribute__((used)) static bool FUNC2(struct efx_nic *efx)
{
	bool was_up = efx->link_state.up;

	efx->link_state.up = FUNC1(efx);
	efx->link_state.speed = 10000;
	efx->link_state.fd = true;
	efx->link_state.fc = efx->wanted_fc;

	if (efx->phy_type == PHY_TYPE_QT2025C)
		FUNC0(efx);

	return efx->link_state.up != was_up;
}