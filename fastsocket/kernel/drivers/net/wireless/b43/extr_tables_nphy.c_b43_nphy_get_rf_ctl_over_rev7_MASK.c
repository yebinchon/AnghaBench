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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct nphy_rf_control_override_rev7 {scalar_t__ field; } ;
struct b43_wldev {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int FUNC0 (struct nphy_rf_control_override_rev7*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct nphy_rf_control_override_rev7* tbl_rf_control_override_rev7_over0 ; 
 struct nphy_rf_control_override_rev7* tbl_rf_control_override_rev7_over1 ; 
 struct nphy_rf_control_override_rev7* tbl_rf_control_override_rev7_over2 ; 

const struct nphy_rf_control_override_rev7 *FUNC2(
	struct b43_wldev *dev, u16 field, u8 override)
{
	const struct nphy_rf_control_override_rev7 *e;
	u8 size, i;

	switch (override) {
	case 0:
		e = tbl_rf_control_override_rev7_over0;
		size = FUNC0(tbl_rf_control_override_rev7_over0);
		break;
	case 1:
		e = tbl_rf_control_override_rev7_over1;
		size = FUNC0(tbl_rf_control_override_rev7_over1);
		break;
	case 2:
		e = tbl_rf_control_override_rev7_over2;
		size = FUNC0(tbl_rf_control_override_rev7_over2);
		break;
	default:
		FUNC1(dev->wl, "Invalid override value %d\n", override);
		return NULL;
	}

	for (i = 0; i < size; i++) {
		if (e[i].field == field)
			return &e[i];
	}

	return NULL;
}