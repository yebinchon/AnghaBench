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
typedef  int u32 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; scalar_t__ nphy_perical_last; int /*<<< orphan*/  measure_hold; } ;
struct TYPE_2__ {scalar_t__ glacial_timer; scalar_t__ now; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_HOLD_FOR_MUTE ; 
 int PHY_MUTE_FOR_PREISM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct brcms_phy_pub *pih, bool mute, u32 flags)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;

	if (mute)
		FUNC1(pi->measure_hold, PHY_HOLD_FOR_MUTE);
	else
		FUNC0(pi->measure_hold, PHY_HOLD_FOR_MUTE);

	if (!mute && (flags & PHY_MUTE_FOR_PREISM))
		pi->nphy_perical_last = pi->sh->now - pi->sh->glacial_timer;
	return;
}