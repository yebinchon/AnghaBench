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
typedef  int /*<<< orphan*/  u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy_lcnphy {int /*<<< orphan*/  lcnphy_noise_samples; int /*<<< orphan*/  lcnphy_rawtempsense; int /*<<< orphan*/  lcnphy_cal_temper; scalar_t__ lcnphy_cal_counter; } ;
struct TYPE_3__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_2__* sh; int /*<<< orphan*/  radio_chanspec; TYPE_1__ u; } ;
struct TYPE_4__ {int boardflags; int /*<<< orphan*/  sih; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_CLK_INIT_MODE_TXRX2X ; 
 int BFL_FEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIXED_TXPWR ; 
 int /*<<< orphan*/  LCNPHY_NOISE_SAMPLES_DEFAULT ; 
 int /*<<< orphan*/  LCNPHY_TX_PWR_CTRL_HW ; 
 int /*<<< orphan*/  PHY_PERICAL_PHYINIT ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*) ; 
 scalar_t__ FUNC16 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy_pub*) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_phy_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct brcms_phy*,int,int) ; 

void FUNC20(struct brcms_phy *pi)
{
	u8 phybw40;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;
	phybw40 = FUNC1(pi->radio_chanspec);

	pi_lcn->lcnphy_cal_counter = 0;
	pi_lcn->lcnphy_cal_temper = pi_lcn->lcnphy_rawtempsense;

	FUNC4(pi, 0x44a, 0x80);
	FUNC2(pi, 0x44a, 0x7f);

	FUNC8(pi, AFE_CLK_INIT_MODE_TXRX2X);

	FUNC19(pi, 0x60a, 160);

	FUNC19(pi, 0x46a, 25);

	FUNC10(pi);

	FUNC12(pi);

	if (FUNC0(pi->radio_chanspec))
		FUNC17((struct brcms_phy_pub *) pi);

	FUNC18((struct brcms_phy_pub *) pi, pi->radio_chanspec);

	FUNC6(pi->sh->sih, 0, 0xf, 0x9);

	FUNC5(pi->sh->sih, 0, 0xffffffff, 0x03CDDDDD);

	if ((pi->sh->boardflags & BFL_FEM)
	    && FUNC16(pi))
		FUNC13(pi, FIXED_TXPWR);

	FUNC9(pi);

	FUNC15(pi);

	FUNC3(pi, 0x448, (0x1 << 14), (1) << 14);

	FUNC7(100);
	FUNC3(pi, 0x448, (0x1 << 14), (0) << 14);

	FUNC14(pi, LCNPHY_TX_PWR_CTRL_HW);
	pi_lcn->lcnphy_noise_samples = LCNPHY_NOISE_SAMPLES_DEFAULT;
	FUNC11(pi, PHY_PERICAL_PHYINIT);
}