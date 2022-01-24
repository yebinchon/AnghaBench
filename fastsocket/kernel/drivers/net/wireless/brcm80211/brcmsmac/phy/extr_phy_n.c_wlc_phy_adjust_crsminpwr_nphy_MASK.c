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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int nphy_crsminpwr_adjusted; int* nphy_crsminpwr; int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void FUNC5(struct brcms_phy *pi, u8 minpwr)
{
	u16 regval;

	if (FUNC2(pi->pubpi.phy_rev, 3)) {
		if ((FUNC0(pi->radio_chanspec) == 11) &&
		    FUNC1(pi->radio_chanspec)) {
			if (!pi->nphy_crsminpwr_adjusted) {
				regval = FUNC3(pi, 0x27d);
				pi->nphy_crsminpwr[0] = regval & 0xff;
				regval &= 0xff00;
				regval |= (u16) minpwr;
				FUNC4(pi, 0x27d, regval);

				regval = FUNC3(pi, 0x280);
				pi->nphy_crsminpwr[1] = regval & 0xff;
				regval &= 0xff00;
				regval |= (u16) minpwr;
				FUNC4(pi, 0x280, regval);

				regval = FUNC3(pi, 0x283);
				pi->nphy_crsminpwr[2] = regval & 0xff;
				regval &= 0xff00;
				regval |= (u16) minpwr;
				FUNC4(pi, 0x283, regval);

				pi->nphy_crsminpwr_adjusted = true;
			}
		} else {
			if (pi->nphy_crsminpwr_adjusted) {
				regval = FUNC3(pi, 0x27d);
				regval &= 0xff00;
				regval |= pi->nphy_crsminpwr[0];
				FUNC4(pi, 0x27d, regval);

				regval = FUNC3(pi, 0x280);
				regval &= 0xff00;
				regval |= pi->nphy_crsminpwr[1];
				FUNC4(pi, 0x280, regval);

				regval = FUNC3(pi, 0x283);
				regval &= 0xff00;
				regval |= pi->nphy_crsminpwr[2];
				FUNC4(pi, 0x283, regval);

				pi->nphy_crsminpwr_adjusted = false;
			}
		}
	}
}