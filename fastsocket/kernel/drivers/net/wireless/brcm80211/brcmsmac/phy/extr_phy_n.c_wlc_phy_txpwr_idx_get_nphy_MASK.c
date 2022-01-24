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
typedef  int u16 ;
struct brcms_phy {TYPE_1__* nphy_txpwrindex; } ;
struct TYPE_2__ {int index_internal; } ;

/* Variables and functions */
 size_t PHY_CORE_0 ; 
 size_t PHY_CORE_1 ; 
 int FUNC0 (struct brcms_phy*,size_t) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 

u16 FUNC2(struct brcms_phy *pi)
{
	u16 tmp;
	u16 pwr_idx[2];

	if (FUNC1(pi)) {
		pwr_idx[0] = FUNC0(pi, PHY_CORE_0);
		pwr_idx[1] = FUNC0(pi, PHY_CORE_1);

		tmp = (pwr_idx[0] << 8) | pwr_idx[1];
	} else {
		tmp = ((pi->nphy_txpwrindex[PHY_CORE_0].index_internal & 0xff)
			<< 8) |
			(pi->nphy_txpwrindex[PHY_CORE_1].index_internal & 0xff);
	}

	return tmp;
}