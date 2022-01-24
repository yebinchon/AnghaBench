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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {scalar_t__ nphy_gain_boost; int /*<<< orphan*/  radio_chanspec; TYPE_1__* sh; } ;
struct TYPE_2__ {int sromrev; int boardflags2; } ;

/* Variables and functions */
 int BFL2_RXBB_INT_REG_DIS ; 
 int /*<<< orphan*/  RADIO_2055_CAL_COUNTER_OUT2 ; 
 int /*<<< orphan*/  RADIO_2055_CAL_LPO_CNTRL ; 
 int RADIO_2055_CAL_LPO_ENABLE ; 
 int /*<<< orphan*/  RADIO_2055_CAL_MISC ; 
 int /*<<< orphan*/  RADIO_2055_CORE1_LNA_GAINBST ; 
 int /*<<< orphan*/  RADIO_2055_CORE1_RXBB_LPF ; 
 int /*<<< orphan*/  RADIO_2055_CORE1_RXBB_MIDAC_HIPAS ; 
 int /*<<< orphan*/  RADIO_2055_CORE1_RXBB_REGULATOR ; 
 int /*<<< orphan*/  RADIO_2055_CORE1_RXRF_SPC1 ; 
 int /*<<< orphan*/  RADIO_2055_CORE2_LNA_GAINBST ; 
 int /*<<< orphan*/  RADIO_2055_CORE2_RXBB_LPF ; 
 int /*<<< orphan*/  RADIO_2055_CORE2_RXBB_MIDAC_HIPAS ; 
 int /*<<< orphan*/  RADIO_2055_CORE2_RXBB_REGULATOR ; 
 int /*<<< orphan*/  RADIO_2055_CORE2_RXRF_SPC1 ; 
 int RADIO_2055_GAINBST_CODE ; 
 int RADIO_2055_GAINBST_DISABLE ; 
 int RADIO_2055_GAINBST_VAL_MASK ; 
 int RADIO_2055_JTAGCTRL_MASK ; 
 int RADIO_2055_JTAGSYNC_MASK ; 
 int /*<<< orphan*/  RADIO_2055_MASTER_CNTRL1 ; 
 int RADIO_2055_RCAL_DONE ; 
 int RADIO_2055_RRCAL_RST_N ; 
 int RADIO_2055_RRCAL_START ; 
 int /*<<< orphan*/  RADIO_2055_RRCCAL_N_OPT_SEL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct brcms_phy *pi)
{

	FUNC2(pi, RADIO_2055_MASTER_CNTRL1,
		      ~(RADIO_2055_JTAGCTRL_MASK | RADIO_2055_JTAGSYNC_MASK));

	if (((pi->sh->sromrev >= 4)
	     && !(pi->sh->boardflags2 & BFL2_RXBB_INT_REG_DIS))
	    || ((pi->sh->sromrev < 4))) {
		FUNC2(pi, RADIO_2055_CORE1_RXBB_REGULATOR, 0x7F);
		FUNC2(pi, RADIO_2055_CORE2_RXBB_REGULATOR, 0x7F);
	}

	FUNC3(pi, RADIO_2055_RRCCAL_N_OPT_SEL, 0x3F, 0x2C);
	FUNC8(pi, RADIO_2055_CAL_MISC, 0x3C);

	FUNC2(pi, RADIO_2055_CAL_MISC,
		      ~(RADIO_2055_RRCAL_START | RADIO_2055_RRCAL_RST_N));

	FUNC4(pi, RADIO_2055_CAL_LPO_CNTRL, RADIO_2055_CAL_LPO_ENABLE);

	FUNC4(pi, RADIO_2055_CAL_MISC, RADIO_2055_RRCAL_RST_N);

	FUNC6(1000);

	FUNC4(pi, RADIO_2055_CAL_MISC, RADIO_2055_RRCAL_START);

	FUNC0(((FUNC5(pi, RADIO_2055_CAL_COUNTER_OUT2) &
		   RADIO_2055_RCAL_DONE) != RADIO_2055_RCAL_DONE), 2000);

	if (FUNC1((FUNC5(pi, RADIO_2055_CAL_COUNTER_OUT2) &
		  RADIO_2055_RCAL_DONE) != RADIO_2055_RCAL_DONE,
		 "HW error: radio calibration1\n"))
		return;

	FUNC2(pi, RADIO_2055_CAL_LPO_CNTRL,
		      ~(RADIO_2055_CAL_LPO_ENABLE));

	FUNC7((struct brcms_phy_pub *) pi, pi->radio_chanspec);

	FUNC8(pi, RADIO_2055_CORE1_RXBB_LPF, 9);
	FUNC8(pi, RADIO_2055_CORE2_RXBB_LPF, 9);

	FUNC8(pi, RADIO_2055_CORE1_RXBB_MIDAC_HIPAS, 0x83);
	FUNC8(pi, RADIO_2055_CORE2_RXBB_MIDAC_HIPAS, 0x83);

	FUNC3(pi, RADIO_2055_CORE1_LNA_GAINBST,
		      RADIO_2055_GAINBST_VAL_MASK, RADIO_2055_GAINBST_CODE);
	FUNC3(pi, RADIO_2055_CORE2_LNA_GAINBST,
		      RADIO_2055_GAINBST_VAL_MASK, RADIO_2055_GAINBST_CODE);
	if (pi->nphy_gain_boost) {
		FUNC2(pi, RADIO_2055_CORE1_RXRF_SPC1,
			      ~(RADIO_2055_GAINBST_DISABLE));
		FUNC2(pi, RADIO_2055_CORE2_RXRF_SPC1,
			      ~(RADIO_2055_GAINBST_DISABLE));
	} else {
		FUNC4(pi, RADIO_2055_CORE1_RXRF_SPC1,
			     RADIO_2055_GAINBST_DISABLE);
		FUNC4(pi, RADIO_2055_CORE2_RXRF_SPC1,
			     RADIO_2055_GAINBST_DISABLE);
	}

	FUNC6(2);
}