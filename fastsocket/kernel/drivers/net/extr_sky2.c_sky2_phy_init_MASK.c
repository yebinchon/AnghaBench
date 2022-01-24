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
typedef  int u16 ;
struct sky2_port {int flags; int advertising; int speed; scalar_t__ duplex; size_t flow_mode; } ;
struct sky2_hw {int flags; int chip_id; scalar_t__ chip_rev; char pmd_type; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Full ; 
 int ADVERTISED_1000baseT_Half ; 
 int ADVERTISED_100baseT_Full ; 
 int ADVERTISED_100baseT_Half ; 
 int ADVERTISED_10baseT_Full ; 
 int ADVERTISED_10baseT_Half ; 
 int /*<<< orphan*/  BLINK_84MS ; 
 int CHIP_ID_YUKON_EC ; 
#define  CHIP_ID_YUKON_EC_U 135 
#define  CHIP_ID_YUKON_EX 134 
#define  CHIP_ID_YUKON_FE 133 
#define  CHIP_ID_YUKON_FE_P 132 
#define  CHIP_ID_YUKON_SUPR 131 
 int const CHIP_ID_YUKON_UL_2 ; 
#define  CHIP_ID_YUKON_XL 130 
 scalar_t__ CHIP_REV_YU_FE2_A0 ; 
 scalar_t__ DUPLEX_FULL ; 
 size_t FC_NONE ; 
 int FC_RX ; 
 int /*<<< orphan*/  GMAC_CTRL ; 
 int /*<<< orphan*/  GMC_PAUSE_OFF ; 
 int /*<<< orphan*/  GMC_PAUSE_ON ; 
 int GM_GPCR_AU_DUP_DIS ; 
 int GM_GPCR_AU_FCT_DIS ; 
 int GM_GPCR_AU_SPD_DIS ; 
 int GM_GPCR_DUP_FULL ; 
 int GM_GPCR_SPEED_100 ; 
 int GM_GPCR_SPEED_1000 ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int /*<<< orphan*/  LED_PAR_CTRL_ACT_BL ; 
 int /*<<< orphan*/  LED_PAR_CTRL_LINK ; 
 int /*<<< orphan*/  LED_PAR_CTRL_SPEED ; 
 int /*<<< orphan*/  MAC_TX_CLK_25_MHZ ; 
 int /*<<< orphan*/  MO_LED_OFF ; 
 int /*<<< orphan*/  MO_LED_ON ; 
 int PHY_AN_CSMA ; 
 int PHY_CT_ANE ; 
 int PHY_CT_DUP_MD ; 
 int PHY_CT_RESET ; 
 int PHY_CT_RE_CFG ; 
 int PHY_CT_SP100 ; 
 int PHY_CT_SP1000 ; 
 int PHY_MARV_1000T_CTRL ; 
 int PHY_MARV_AUNE_ADV ; 
 int PHY_MARV_CTRL ; 
 int PHY_MARV_EXT_ADR ; 
 int PHY_MARV_EXT_CTRL ; 
 int PHY_MARV_FE_LED_PAR ; 
 int PHY_MARV_FE_SPEC_2 ; 
 int PHY_MARV_INT_MASK ; 
 int PHY_MARV_LED_CTRL ; 
 int PHY_MARV_LED_OVER ; 
 int PHY_MARV_PAGE_ADDR ; 
 int PHY_MARV_PAGE_DATA ; 
 int PHY_MARV_PHY_CTRL ; 
 int PHY_MARV_PHY_STAT ; 
 int PHY_M_1000C_AFD ; 
 int PHY_M_1000C_AHD ; 
 int PHY_M_1000C_MSE ; 
 int PHY_M_AN_1000X_AFD ; 
 int PHY_M_AN_1000X_AHD ; 
 int PHY_M_AN_100_FD ; 
 int PHY_M_AN_100_HD ; 
 int PHY_M_AN_10_FD ; 
 int PHY_M_AN_10_HD ; 
 int PHY_M_DEF_MSK ; 
 int PHY_M_EC_DOWN_S_ENA ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PHY_M_EC_MAC_S_MSK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PHY_M_EC_M_DSC_MSK ; 
 int FUNC3 (int) ; 
 int PHY_M_EC_S_DSC_MSK ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int PHY_M_FELP_LED1_MSK ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int PHY_M_FESC_SEL_CL_A ; 
 int PHY_M_FIB_SIGD_POL ; 
 int PHY_M_IS_AN_COMPL ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int PHY_M_LEDC_TX_CTRL ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_M_MAC_MD_1000BX ; 
 int PHY_M_MAC_MD_MSK ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int PHY_M_PC_DIS_SCRAMB ; 
 int PHY_M_PC_DOWN_S_ENA ; 
 int FUNC16 (int) ; 
 int PHY_M_PC_DSC_MSK ; 
 int /*<<< orphan*/  PHY_M_PC_ENA_AUTO ; 
 int PHY_M_PC_ENA_ENE_DT ; 
 int PHY_M_PC_ENA_LIP_NP ; 
 int PHY_M_PC_EN_DET_MSK ; 
 int PHY_M_PC_MDIX_MSK ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 
 int /*<<< orphan*/  PULS_170MS ; 
 int SKY2_FLAG_AUTO_PAUSE ; 
 int SKY2_FLAG_AUTO_SPEED ; 
 int SKY2_HW_FIBRE_PHY ; 
 int SKY2_HW_GIGABIT ; 
 int SKY2_HW_NEWER_PHY ; 
 int /*<<< orphan*/  FUNC24 (unsigned int,int /*<<< orphan*/ ) ; 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int* copper_fc_adv ; 
 int* fiber_fc_adv ; 
 int* gm_fc_disable ; 
 int FUNC25 (struct sky2_hw*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC26 (struct sky2_hw*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC27 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 struct sky2_port* FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (struct sky2_hw*) ; 
 int /*<<< orphan*/  FUNC30 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC31(struct sky2_hw *hw, unsigned port)
{
	struct sky2_port *sky2 = FUNC28(hw->dev[port]);
	u16 ctrl, ct1000, adv, pg, ledctrl, ledover, reg;

	if ( (sky2->flags & SKY2_FLAG_AUTO_SPEED) &&
	    !(hw->flags & SKY2_HW_NEWER_PHY)) {
		u16 ectrl = FUNC25(hw, port, PHY_MARV_EXT_CTRL);

		ectrl &= ~(PHY_M_EC_M_DSC_MSK | PHY_M_EC_S_DSC_MSK |
			   PHY_M_EC_MAC_S_MSK);
		ectrl |= FUNC1(MAC_TX_CLK_25_MHZ);

		/* on PHY 88E1040 Rev.D0 (and newer) downshift control changed */
		if (hw->chip_id == CHIP_ID_YUKON_EC)
			/* set downshift counter to 3x and enable downshift */
			ectrl |= FUNC0(2) | PHY_M_EC_DOWN_S_ENA;
		else
			/* set master & slave downshift counter to 1x */
			ectrl |= FUNC2(0) | FUNC3(1);

		FUNC26(hw, port, PHY_MARV_EXT_CTRL, ectrl);
	}

	ctrl = FUNC25(hw, port, PHY_MARV_PHY_CTRL);
	if (FUNC29(hw)) {
		if (!(hw->flags & SKY2_HW_GIGABIT)) {
			/* enable automatic crossover */
			ctrl |= FUNC17(PHY_M_PC_ENA_AUTO) >> 1;

			if (hw->chip_id == CHIP_ID_YUKON_FE_P &&
			    hw->chip_rev == CHIP_REV_YU_FE2_A0) {
				u16 spec;

				/* Enable Class A driver for FE+ A0 */
				spec = FUNC25(hw, port, PHY_MARV_FE_SPEC_2);
				spec |= PHY_M_FESC_SEL_CL_A;
				FUNC26(hw, port, PHY_MARV_FE_SPEC_2, spec);
			}
		} else {
			/* disable energy detect */
			ctrl &= ~PHY_M_PC_EN_DET_MSK;

			/* enable automatic crossover */
			ctrl |= FUNC17(PHY_M_PC_ENA_AUTO);

			/* downshift on PHY 88E1112 and 88E1149 is changed */
			if ( (sky2->flags & SKY2_FLAG_AUTO_SPEED)
			    && (hw->flags & SKY2_HW_NEWER_PHY)) {
				/* set downshift counter to 3x and enable downshift */
				ctrl &= ~PHY_M_PC_DSC_MSK;
				ctrl |= FUNC16(2) | PHY_M_PC_DOWN_S_ENA;
			}
		}
	} else {
		/* workaround for deviation #4.88 (CRC errors) */
		/* disable Automatic Crossover */

		ctrl &= ~PHY_M_PC_MDIX_MSK;
	}

	FUNC26(hw, port, PHY_MARV_PHY_CTRL, ctrl);

	/* special setup for PHY 88E1112 Fiber */
	if (hw->chip_id == CHIP_ID_YUKON_XL && (hw->flags & SKY2_HW_FIBRE_PHY)) {
		pg = FUNC25(hw, port, PHY_MARV_EXT_ADR);

		/* Fiber: select 1000BASE-X only mode MAC Specific Ctrl Reg. */
		FUNC26(hw, port, PHY_MARV_EXT_ADR, 2);
		ctrl = FUNC25(hw, port, PHY_MARV_PHY_CTRL);
		ctrl &= ~PHY_M_MAC_MD_MSK;
		ctrl |= FUNC15(PHY_M_MAC_MD_1000BX);
		FUNC26(hw, port, PHY_MARV_PHY_CTRL, ctrl);

		if (hw->pmd_type  == 'P') {
			/* select page 1 to access Fiber registers */
			FUNC26(hw, port, PHY_MARV_EXT_ADR, 1);

			/* for SFP-module set SIGDET polarity to low */
			ctrl = FUNC25(hw, port, PHY_MARV_PHY_CTRL);
			ctrl |= PHY_M_FIB_SIGD_POL;
			FUNC26(hw, port, PHY_MARV_PHY_CTRL, ctrl);
		}

		FUNC26(hw, port, PHY_MARV_EXT_ADR, pg);
	}

	ctrl = PHY_CT_RESET;
	ct1000 = 0;
	adv = PHY_AN_CSMA;
	reg = 0;

	if (sky2->flags & SKY2_FLAG_AUTO_SPEED) {
		if (FUNC29(hw)) {
			if (sky2->advertising & ADVERTISED_1000baseT_Full)
				ct1000 |= PHY_M_1000C_AFD;
			if (sky2->advertising & ADVERTISED_1000baseT_Half)
				ct1000 |= PHY_M_1000C_AHD;
			if (sky2->advertising & ADVERTISED_100baseT_Full)
				adv |= PHY_M_AN_100_FD;
			if (sky2->advertising & ADVERTISED_100baseT_Half)
				adv |= PHY_M_AN_100_HD;
			if (sky2->advertising & ADVERTISED_10baseT_Full)
				adv |= PHY_M_AN_10_FD;
			if (sky2->advertising & ADVERTISED_10baseT_Half)
				adv |= PHY_M_AN_10_HD;

		} else {	/* special defines for FIBER (88E1040S only) */
			if (sky2->advertising & ADVERTISED_1000baseT_Full)
				adv |= PHY_M_AN_1000X_AFD;
			if (sky2->advertising & ADVERTISED_1000baseT_Half)
				adv |= PHY_M_AN_1000X_AHD;
		}

		/* Restart Auto-negotiation */
		ctrl |= PHY_CT_ANE | PHY_CT_RE_CFG;
	} else {
		/* forced speed/duplex settings */
		ct1000 = PHY_M_1000C_MSE;

		/* Disable auto update for duplex flow control and duplex */
		reg |= GM_GPCR_AU_DUP_DIS | GM_GPCR_AU_SPD_DIS;

		switch (sky2->speed) {
		case SPEED_1000:
			ctrl |= PHY_CT_SP1000;
			reg |= GM_GPCR_SPEED_1000;
			break;
		case SPEED_100:
			ctrl |= PHY_CT_SP100;
			reg |= GM_GPCR_SPEED_100;
			break;
		}

		if (sky2->duplex == DUPLEX_FULL) {
			reg |= GM_GPCR_DUP_FULL;
			ctrl |= PHY_CT_DUP_MD;
		} else if (sky2->speed < SPEED_1000)
			sky2->flow_mode = FC_NONE;
	}

	if (sky2->flags & SKY2_FLAG_AUTO_PAUSE) {
		if (FUNC29(hw))
			adv |= copper_fc_adv[sky2->flow_mode];
		else
			adv |= fiber_fc_adv[sky2->flow_mode];
	} else {
		reg |= GM_GPCR_AU_FCT_DIS;
 		reg |= gm_fc_disable[sky2->flow_mode];

		/* Forward pause packets to GMAC? */
		if (sky2->flow_mode & FC_RX)
			FUNC30(hw, FUNC24(port, GMAC_CTRL), GMC_PAUSE_ON);
		else
			FUNC30(hw, FUNC24(port, GMAC_CTRL), GMC_PAUSE_OFF);
	}

	FUNC27(hw, port, GM_GP_CTRL, reg);

	if (hw->flags & SKY2_HW_GIGABIT)
		FUNC26(hw, port, PHY_MARV_1000T_CTRL, ct1000);

	FUNC26(hw, port, PHY_MARV_AUNE_ADV, adv);
	FUNC26(hw, port, PHY_MARV_CTRL, ctrl);

	/* Setup Phy LED's */
	ledctrl = FUNC14(PULS_170MS);
	ledover = 0;

	switch (hw->chip_id) {
	case CHIP_ID_YUKON_FE:
		/* on 88E3082 these bits are at 11..9 (shifted left) */
		ledctrl |= FUNC11(BLINK_84MS) << 1;

		ctrl = FUNC25(hw, port, PHY_MARV_FE_LED_PAR);

		/* delete ACT LED control bits */
		ctrl &= ~PHY_M_FELP_LED1_MSK;
		/* change ACT LED control to blink mode */
		ctrl |= FUNC5(LED_PAR_CTRL_ACT_BL);
		FUNC26(hw, port, PHY_MARV_FE_LED_PAR, ctrl);
		break;

	case CHIP_ID_YUKON_FE_P:
		/* Enable Link Partner Next Page */
		ctrl = FUNC25(hw, port, PHY_MARV_PHY_CTRL);
		ctrl |= PHY_M_PC_ENA_LIP_NP;

		/* disable Energy Detect and enable scrambler */
		ctrl &= ~(PHY_M_PC_ENA_ENE_DT | PHY_M_PC_DIS_SCRAMB);
		FUNC26(hw, port, PHY_MARV_PHY_CTRL, ctrl);

		/* set LED2 -> ACT, LED1 -> LINK, LED0 -> SPEED */
		ctrl = FUNC6(LED_PAR_CTRL_ACT_BL) |
			FUNC5(LED_PAR_CTRL_LINK) |
			FUNC4(LED_PAR_CTRL_SPEED);

		FUNC26(hw, port, PHY_MARV_FE_LED_PAR, ctrl);
		break;

	case CHIP_ID_YUKON_XL:
		pg = FUNC25(hw, port, PHY_MARV_EXT_ADR);

		/* select page 3 to access LED control register */
		FUNC26(hw, port, PHY_MARV_EXT_ADR, 3);

		/* set LED Function Control register */
		FUNC26(hw, port, PHY_MARV_PHY_CTRL,
			     (FUNC8(1) |	/* LINK/ACT */
			      FUNC7(7) |	/* 10 Mbps */
			      FUNC10(7) |	/* 100 Mbps */
			      FUNC9(7)));	/* 1000 Mbps */

		/* set Polarity Control register */
		FUNC26(hw, port, PHY_MARV_PHY_STAT,
			     (FUNC21(4) |
			      FUNC19(4) |
			      FUNC20(2) |
			      FUNC18(2) |
			      FUNC23(2) |
			      FUNC22(2)));

		/* restore page register */
		FUNC26(hw, port, PHY_MARV_EXT_ADR, pg);
		break;

	case CHIP_ID_YUKON_EC_U:
	case CHIP_ID_YUKON_EX:
	case CHIP_ID_YUKON_SUPR:
		pg = FUNC25(hw, port, PHY_MARV_EXT_ADR);

		/* select page 3 to access LED control register */
		FUNC26(hw, port, PHY_MARV_EXT_ADR, 3);

		/* set LED Function Control register */
		FUNC26(hw, port, PHY_MARV_PHY_CTRL,
			     (FUNC8(1) |	/* LINK/ACT */
			      FUNC7(8) |	/* 10 Mbps */
			      FUNC10(7) |	/* 100 Mbps */
			      FUNC9(7)));/* 1000 Mbps */

		/* set Blink Rate in LED Timer Control Register */
		FUNC26(hw, port, PHY_MARV_INT_MASK,
			     ledctrl | FUNC11(BLINK_84MS));
		/* restore page register */
		FUNC26(hw, port, PHY_MARV_EXT_ADR, pg);
		break;

	default:
		/* set Tx LED (LED_TX) to blink mode on Rx OR Tx activity */
		ledctrl |= FUNC11(BLINK_84MS) | PHY_M_LEDC_TX_CTRL;

		/* turn off the Rx LED (LED_RX) */
		ledover |= FUNC13(MO_LED_OFF);
	}

	if (hw->chip_id == CHIP_ID_YUKON_EC_U || hw->chip_id == CHIP_ID_YUKON_UL_2) {
		/* apply fixes in PHY AFE */
		FUNC26(hw, port, PHY_MARV_EXT_ADR, 255);

		/* increase differential signal amplitude in 10BASE-T */
		FUNC26(hw, port, 0x18, 0xaa99);
		FUNC26(hw, port, 0x17, 0x2011);

		if (hw->chip_id == CHIP_ID_YUKON_EC_U) {
			/* fix for IEEE A/B Symmetry failure in 1000BASE-T */
			FUNC26(hw, port, 0x18, 0xa204);
			FUNC26(hw, port, 0x17, 0x2002);
		}

		/* set page register to 0 */
		FUNC26(hw, port, PHY_MARV_EXT_ADR, 0);
	} else if (hw->chip_id == CHIP_ID_YUKON_FE_P &&
		   hw->chip_rev == CHIP_REV_YU_FE2_A0) {
		/* apply workaround for integrated resistors calibration */
		FUNC26(hw, port, PHY_MARV_PAGE_ADDR, 17);
		FUNC26(hw, port, PHY_MARV_PAGE_DATA, 0x3f60);
	} else if (hw->chip_id != CHIP_ID_YUKON_EX &&
		   hw->chip_id < CHIP_ID_YUKON_SUPR) {
		/* no effect on Yukon-XL */
		FUNC26(hw, port, PHY_MARV_LED_CTRL, ledctrl);

		if ( !(sky2->flags & SKY2_FLAG_AUTO_SPEED)
		     || sky2->speed == SPEED_100) {
			/* turn on 100 Mbps LED (LED_LINK100) */
			ledover |= FUNC12(MO_LED_ON);
		}

		if (ledover)
			FUNC26(hw, port, PHY_MARV_LED_OVER, ledover);

	}

	/* Enable phy interrupt on auto-negotiation complete (or link up) */
	if (sky2->flags & SKY2_FLAG_AUTO_SPEED)
		FUNC26(hw, port, PHY_MARV_INT_MASK, PHY_M_IS_AN_COMPL);
	else
		FUNC26(hw, port, PHY_MARV_INT_MASK, PHY_M_DEF_MSK);
}