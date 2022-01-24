#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int phy_txcore_heatedup; scalar_t__ phy_txcore_disable_temp; scalar_t__ phy_txcore_enable_temp; TYPE_2__* sh; TYPE_1__ pubpi; int /*<<< orphan*/  watchdog_override; } ;
typedef  scalar_t__ s16 ;
struct TYPE_4__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct brcms_phy*) ; 

u8 FUNC4(struct brcms_phy_pub *pih)
{
	s16 nphy_currtemp;
	u8 active_bitmap;
	struct brcms_phy *pi = (struct brcms_phy *) pih;

	active_bitmap = (pi->phy_txcore_heatedup) ? 0x31 : 0x33;

	if (!pi->watchdog_override)
		return active_bitmap;

	if (FUNC0(pi->pubpi.phy_rev, 6)) {
		FUNC2(pi->sh->physhim);
		nphy_currtemp = FUNC3(pi);
		FUNC1(pi->sh->physhim);

		if (!pi->phy_txcore_heatedup) {
			if (nphy_currtemp >= pi->phy_txcore_disable_temp) {
				active_bitmap &= 0xFD;
				pi->phy_txcore_heatedup = true;
			}
		} else {
			if (nphy_currtemp <= pi->phy_txcore_enable_temp) {
				active_bitmap |= 0x2;
				pi->phy_txcore_heatedup = false;
			}
		}
	}

	return active_bitmap;
}