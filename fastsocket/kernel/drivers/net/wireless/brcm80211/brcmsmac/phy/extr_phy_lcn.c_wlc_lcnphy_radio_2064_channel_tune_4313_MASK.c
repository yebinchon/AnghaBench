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
typedef  size_t uint ;
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct chan_info_2064_lcnphy {int chan; int logen_buftune; int logen_rccr_tx; int txrf_mix_tune_ctrl; int pa_input_tune_g; int logen_rccr_rx; int pa_rxrf_lna1_freq_tune; int pa_rxrf_lna2_freq_tune; int rxrf_rxrf_spare1; int freq; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int xtalfreq; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;
typedef  int s32 ;

/* Variables and functions */
 size_t FUNC0 (struct chan_info_2064_lcnphy*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int LCN_BW_LMT ; 
 int LCN_CUR_DIV ; 
 int LCN_CUR_LMT ; 
 int LCN_FACT ; 
 int LCN_MULT ; 
 int LCN_OFFSET ; 
 int LCN_VCO_DIV ; 
 int PLL_2064_D30 ; 
 int PLL_2064_D30_DOUBLER ; 
 int PLL_2064_HIGH_END_KVCO ; 
 int PLL_2064_HIGH_END_VCO ; 
 int PLL_2064_LOOP_BW ; 
 int PLL_2064_LOOP_BW_DOUBLER ; 
 int PLL_2064_LOW_END_KVCO ; 
 int PLL_2064_LOW_END_VCO ; 
 int PLL_2064_MHZ ; 
 int /*<<< orphan*/  RADIO_2064_REG02A ; 
 int /*<<< orphan*/  RADIO_2064_REG030 ; 
 int /*<<< orphan*/  RADIO_2064_REG038 ; 
 int /*<<< orphan*/  RADIO_2064_REG03C ; 
 int /*<<< orphan*/  RADIO_2064_REG03D ; 
 int /*<<< orphan*/  RADIO_2064_REG040 ; 
 int /*<<< orphan*/  RADIO_2064_REG041 ; 
 int /*<<< orphan*/  RADIO_2064_REG042 ; 
 int /*<<< orphan*/  RADIO_2064_REG043 ; 
 int /*<<< orphan*/  RADIO_2064_REG044 ; 
 int /*<<< orphan*/  RADIO_2064_REG045 ; 
 int /*<<< orphan*/  RADIO_2064_REG046 ; 
 int /*<<< orphan*/  RADIO_2064_REG047 ; 
 int /*<<< orphan*/  RADIO_2064_REG048 ; 
 int /*<<< orphan*/  RADIO_2064_REG04F ; 
 int /*<<< orphan*/  RADIO_2064_REG051 ; 
 int /*<<< orphan*/  RADIO_2064_REG052 ; 
 int /*<<< orphan*/  RADIO_2064_REG053 ; 
 int /*<<< orphan*/  RADIO_2064_REG054 ; 
 int /*<<< orphan*/  RADIO_2064_REG05E ; 
 int /*<<< orphan*/  RADIO_2064_REG06C ; 
 int /*<<< orphan*/  RADIO_2064_REG091 ; 
 int /*<<< orphan*/  RADIO_2064_REG09D ; 
 int /*<<< orphan*/  RADIO_2064_REG09E ; 
 int /*<<< orphan*/  RADIO_2064_REG12B ; 
 struct chan_info_2064_lcnphy* chan_info_2064_lcnphy ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*) ; 
 int FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(struct brcms_phy *pi, u8 channel)
{
	uint i;
	const struct chan_info_2064_lcnphy *ci;
	u8 rfpll_doubler = 0;
	u8 pll_pwrup, pll_pwrup_ovr;
	s32 qFxtal, qFref, qFvco, qFcal;
	u8 d15, d16, f16, e44, e45;
	u32 div_int, div_frac, fvco3, fpfd, fref3, fcal_div;
	u16 loop_bw, d30, setCount;

	u8 h29, h28_ten, e30, h30_ten, cp_current;
	u16 g30, d28;

	ci = &chan_info_2064_lcnphy[0];
	rfpll_doubler = 1;

	FUNC3(pi, RADIO_2064_REG09D, 0x4, 0x1 << 2);

	FUNC9(pi, RADIO_2064_REG09E, 0xf);
	if (!rfpll_doubler) {
		loop_bw = PLL_2064_LOOP_BW;
		d30 = PLL_2064_D30;
	} else {
		loop_bw = PLL_2064_LOOP_BW_DOUBLER;
		d30 = PLL_2064_D30_DOUBLER;
	}

	if (FUNC1(pi->radio_chanspec)) {
		for (i = 0; i < FUNC0(chan_info_2064_lcnphy); i++)
			if (chan_info_2064_lcnphy[i].chan == channel)
				break;

		if (i >= FUNC0(chan_info_2064_lcnphy))
			return;

		ci = &chan_info_2064_lcnphy[i];
	}

	FUNC9(pi, RADIO_2064_REG02A, ci->logen_buftune);

	FUNC3(pi, RADIO_2064_REG030, 0x3, ci->logen_rccr_tx);

	FUNC3(pi, RADIO_2064_REG091, 0x3, ci->txrf_mix_tune_ctrl);

	FUNC3(pi, RADIO_2064_REG038, 0xf, ci->pa_input_tune_g);

	FUNC3(pi, RADIO_2064_REG030, 0x3 << 2,
		      (ci->logen_rccr_rx) << 2);

	FUNC3(pi, RADIO_2064_REG05E, 0xf, ci->pa_rxrf_lna1_freq_tune);

	FUNC3(pi, RADIO_2064_REG05E, (0xf) << 4,
		      (ci->pa_rxrf_lna2_freq_tune) << 4);

	FUNC9(pi, RADIO_2064_REG06C, ci->rxrf_rxrf_spare1);

	pll_pwrup = (u8) FUNC5(pi, RADIO_2064_REG044);
	pll_pwrup_ovr = (u8) FUNC5(pi, RADIO_2064_REG12B);

	FUNC4(pi, RADIO_2064_REG044, 0x07);

	FUNC4(pi, RADIO_2064_REG12B, (0x07) << 1);
	e44 = 0;
	e45 = 0;

	fpfd = rfpll_doubler ? (pi->xtalfreq << 1) : (pi->xtalfreq);
	if (pi->xtalfreq > 26000000)
		e44 = 1;
	if (pi->xtalfreq > 52000000)
		e45 = 1;
	if (e44 == 0)
		fcal_div = 1;
	else if (e45 == 0)
		fcal_div = 2;
	else
		fcal_div = 4;
	fvco3 = (ci->freq * 3);
	fref3 = 2 * fpfd;

	qFxtal = FUNC8(pi->xtalfreq, PLL_2064_MHZ, 16);
	qFref = FUNC8(fpfd, PLL_2064_MHZ, 16);
	qFcal = pi->xtalfreq * fcal_div / PLL_2064_MHZ;
	qFvco = FUNC8(fvco3, 2, 16);

	FUNC9(pi, RADIO_2064_REG04F, 0x02);

	d15 = (pi->xtalfreq * fcal_div * 4 / 5) / PLL_2064_MHZ - 1;
	FUNC9(pi, RADIO_2064_REG052, (0x07 & (d15 >> 2)));
	FUNC9(pi, RADIO_2064_REG053, (d15 & 0x3) << 5);

	d16 = (qFcal * 8 / (d15 + 1)) - 1;
	FUNC9(pi, RADIO_2064_REG051, d16);

	f16 = ((d16 + 1) * (d15 + 1)) / qFcal;
	setCount = f16 * 3 * (ci->freq) / 32 - 1;
	FUNC3(pi, RADIO_2064_REG053, (0x0f << 0),
		      (u8) (setCount >> 8));

	FUNC4(pi, RADIO_2064_REG053, 0x10);
	FUNC9(pi, RADIO_2064_REG054, (u8) (setCount & 0xff));

	div_int = ((fvco3 * (PLL_2064_MHZ >> 4)) / fref3) << 4;

	div_frac = ((fvco3 * (PLL_2064_MHZ >> 4)) % fref3) << 4;
	while (div_frac >= fref3) {
		div_int++;
		div_frac -= fref3;
	}
	div_frac = FUNC8(div_frac, fref3, 20);

	FUNC3(pi, RADIO_2064_REG045, (0x1f << 0),
		      (u8) (div_int >> 4));
	FUNC3(pi, RADIO_2064_REG046, (0x1f << 4),
		      (u8) (div_int << 4));
	FUNC3(pi, RADIO_2064_REG046, (0x0f << 0),
		      (u8) (div_frac >> 16));
	FUNC9(pi, RADIO_2064_REG047, (u8) (div_frac >> 8) & 0xff);
	FUNC9(pi, RADIO_2064_REG048, (u8) div_frac & 0xff);

	FUNC9(pi, RADIO_2064_REG040, 0xfb);

	FUNC9(pi, RADIO_2064_REG041, 0x9A);
	FUNC9(pi, RADIO_2064_REG042, 0xA3);
	FUNC9(pi, RADIO_2064_REG043, 0x0C);

	h29 = LCN_BW_LMT / loop_bw;
	d28 = (((PLL_2064_HIGH_END_KVCO - PLL_2064_LOW_END_KVCO) *
		(fvco3 / 2 - PLL_2064_LOW_END_VCO)) /
	       (PLL_2064_HIGH_END_VCO - PLL_2064_LOW_END_VCO))
	      + PLL_2064_LOW_END_KVCO;
	h28_ten = (d28 * 10) / LCN_VCO_DIV;
	e30 = (d30 - LCN_OFFSET) / LCN_FACT;
	g30 = LCN_OFFSET + (e30 * LCN_FACT);
	h30_ten = (g30 * 10) / LCN_CUR_DIV;
	cp_current = ((LCN_CUR_LMT * h29 * LCN_MULT * 100) / h28_ten) / h30_ten;
	FUNC3(pi, RADIO_2064_REG03C, 0x3f, cp_current);

	if (channel >= 1 && channel <= 5)
		FUNC9(pi, RADIO_2064_REG03C, 0x8);
	else
		FUNC9(pi, RADIO_2064_REG03C, 0x7);
	FUNC9(pi, RADIO_2064_REG03D, 0x3);

	FUNC3(pi, RADIO_2064_REG044, 0x0c, 0x0c);
	FUNC6(1);

	FUNC7(pi);

	FUNC9(pi, RADIO_2064_REG044, pll_pwrup);
	FUNC9(pi, RADIO_2064_REG12B, pll_pwrup_ovr);
	if (FUNC2(pi->pubpi.phy_rev, 1)) {
		FUNC9(pi, RADIO_2064_REG038, 3);
		FUNC9(pi, RADIO_2064_REG091, 7);
	}
}