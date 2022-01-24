#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_11__ {scalar_t__ antswctrllut; } ;
struct TYPE_10__ {scalar_t__ antswctrllut; } ;
struct TYPE_9__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {TYPE_5__* d11core; TYPE_3__ srom_fem5g; TYPE_2__ srom_fem2g; TYPE_1__ pubpi; } ;
struct TYPE_13__ {TYPE_4__* bus; } ;
struct TYPE_12__ {int /*<<< orphan*/  drv_cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCTL_GPOUT_SEL_MASK ; 
 int /*<<< orphan*/  NPHY_TBL_ID_ANTSWCTRLLUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  psm_gpio_oe ; 
 int /*<<< orphan*/  psm_gpio_out ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int,int) ; 

void FUNC9(struct brcms_phy_pub *ppi, bool lut_init)
{
	struct brcms_phy *pi = (struct brcms_phy *) ppi;
	u16 mask = 0xfc00;
	u32 mc = 0;

	if (FUNC1(pi->pubpi.phy_rev, 7))
		return;

	if (FUNC1(pi->pubpi.phy_rev, 3)) {
		u16 v0 = 0x211, v1 = 0x222, v2 = 0x144, v3 = 0x188;

		if (!lut_init)
			return;

		if (pi->srom_fem2g.antswctrllut == 0) {
			FUNC7(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 1, 0x02, 16, &v0);
			FUNC7(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 1, 0x03, 16, &v1);
			FUNC7(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 1, 0x08, 16, &v2);
			FUNC7(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 1, 0x0C, 16, &v3);
		}

		if (pi->srom_fem5g.antswctrllut == 0) {
			FUNC7(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 1, 0x12, 16, &v0);
			FUNC7(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 1, 0x13, 16, &v1);
			FUNC7(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 1, 0x18, 16, &v2);
			FUNC7(pi, NPHY_TBL_ID_ANTSWCTRLLUT,
						 1, 0x1C, 16, &v3);
		}
	} else {

		FUNC8(pi, 0xc8, 0x0);
		FUNC8(pi, 0xc9, 0x0);

		FUNC2(&pi->d11core->bus->drv_cc, mask, mask);

		mc = FUNC4(pi->d11core, FUNC0(maccontrol));
		mc &= ~MCTL_GPOUT_SEL_MASK;
		FUNC6(pi->d11core, FUNC0(maccontrol), mc);

		FUNC5(pi->d11core, FUNC0(psm_gpio_oe), mask);

		FUNC3(pi->d11core, FUNC0(psm_gpio_out), ~mask);

		if (lut_init) {
			FUNC8(pi, 0xf8, 0x02d8);
			FUNC8(pi, 0xf9, 0x0301);
			FUNC8(pi, 0xfa, 0x02d8);
			FUNC8(pi, 0xfb, 0x0301);
		}
	}
}