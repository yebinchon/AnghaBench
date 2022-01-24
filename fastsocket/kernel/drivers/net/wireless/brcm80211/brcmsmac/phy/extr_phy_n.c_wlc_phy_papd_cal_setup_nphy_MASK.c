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
typedef  int u8 ;
typedef  int u16 ;
struct nphy_papd_restore_state {void** intpa_master; void** fbmix; void** vga_master; void** afeoverride; void** afectrl; void** atten; void** pwrup; } ;
struct TYPE_2__ {int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; TYPE_1__ pubpi; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTPAA_MASTER ; 
 int /*<<< orphan*/  INTPAG_MASTER ; 
 int NPHY_PAPD_COMP_OFF ; 
 int NPHY_PAPD_COMP_ON ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID0 ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID1 ; 
 int /*<<< orphan*/  NPHY_REV7_RFCTRLOVERRIDE_ID2 ; 
 int /*<<< orphan*/  NPHY_REV7_RfctrlOverride_cmd_tx_pu ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PHY_CORE_0 ; 
 int /*<<< orphan*/  RADIO_2056 ; 
 int /*<<< orphan*/  RADIO_2057 ; 
 void* FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX ; 
 int /*<<< orphan*/  TX ; 
 int /*<<< orphan*/  TXFBMIX_A ; 
 int /*<<< orphan*/  TXFBMIX_G ; 
 int /*<<< orphan*/  TXRXCOUPLE_2G_ATTEN ; 
 int /*<<< orphan*/  TXRXCOUPLE_2G_PWRUP ; 
 int /*<<< orphan*/  TXRXCOUPLE_5G_ATTEN ; 
 int /*<<< orphan*/  TXRXCOUPLE_5G_PWRUP ; 
 int /*<<< orphan*/  VGA_MASTER ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int,int) ; 
 void* FUNC8 (struct brcms_phy*,int) ; 
 int FUNC9 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC14(struct brcms_phy *pi,
			    struct nphy_papd_restore_state *state, u8 core)
{
	s32 tone_freq;
	u8 off_core;
	u16 mixgain = 0;

	off_core = core ^ 0x1;
	if (FUNC1(pi->pubpi.phy_rev, 7)) {

		if (FUNC2(pi->pubpi.phy_rev, 7)
		    || FUNC1(pi->pubpi.phy_rev, 8))
			FUNC12(
				pi, (0x1 << 7),
				FUNC9
					(pi,
					0), 0, 0,
				NPHY_REV7_RFCTRLOVERRIDE_ID1);

		if (FUNC0(pi->radio_chanspec)) {
			if (pi->pubpi.radiorev == 5)
				mixgain = (core == 0) ? 0x20 : 0x00;
			else if ((pi->pubpi.radiorev == 7)
				 || (pi->pubpi.radiorev == 8))
				mixgain = 0x00;
			else if ((pi->pubpi.radiorev <= 4)
				 || (pi->pubpi.radiorev == 6))
				mixgain = 0x00;
		} else {
			if ((pi->pubpi.radiorev == 4) ||
			    (pi->pubpi.radiorev == 6))
				mixgain = 0x50;
			else if ((pi->pubpi.radiorev == 3)
				 || (pi->pubpi.radiorev == 7)
				 || (pi->pubpi.radiorev == 8))
				mixgain = 0x0;
		}

		FUNC12(pi, (0x1 << 11),
						  mixgain, (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);

		FUNC10(
			pi,
			NPHY_REV7_RfctrlOverride_cmd_tx_pu,
			1, (1 << core), 0);
		FUNC10(
			pi,
			NPHY_REV7_RfctrlOverride_cmd_tx_pu,
			0, (1 << off_core), 0);

		FUNC12(pi, (0x1 << 3),
						  0, 0x3, 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID0);
		FUNC12(pi, (0x1 << 2), 1,
						  (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC12(pi, (0x1 << 0), 0,
						  (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC12(pi, (0x1 << 1), 1,
						  (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID2);
		FUNC12(pi, (0x1 << 8), 0,
						  (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC12(pi, (0x1 << 9), 1,
						  (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC12(pi, (0x1 << 10), 0,
						  (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC12(pi, (0x1 << 3), 1,
						  (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);

		FUNC12(pi, (0x1 << 5),
						  0, (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);
		FUNC12(pi, (0x1 << 4), 0,
						  (1 << core), 0,
						  NPHY_REV7_RFCTRLOVERRIDE_ID1);

		state->afectrl[core] = FUNC8(pi, (core == PHY_CORE_0) ?
						    0xa6 : 0xa7);
		state->afeoverride[core] =
			FUNC8(pi, (core == PHY_CORE_0) ? 0x8f : 0xa5);
		state->afectrl[off_core] =
			FUNC8(pi, (core == PHY_CORE_0) ? 0xa7 : 0xa6);
		state->afeoverride[off_core] =
			FUNC8(pi, (core == PHY_CORE_0) ? 0xa5 : 0x8f);

		FUNC7(pi, ((core == PHY_CORE_0) ? 0xa6 : 0xa7),
			    (0x1 << 2), 0);
		FUNC7(pi, ((core == PHY_CORE_0) ? 0x8f :
				 0xa5), (0x1 << 2), (0x1 << 2));

		FUNC7(pi, ((core == PHY_CORE_0) ? 0xa7 : 0xa6),
			    (0x1 << 2), (0x1 << 2));
		FUNC7(pi, ((core == PHY_CORE_0) ? 0xa5 :
				 0x8f), (0x1 << 2), (0x1 << 2));

		if (FUNC0(pi->radio_chanspec)) {
			state->pwrup[core] =
				FUNC4(pi, RADIO_2057, TX, core,
						TXRXCOUPLE_2G_PWRUP);
			state->atten[core] =
				FUNC4(pi, RADIO_2057, TX, core,
						TXRXCOUPLE_2G_ATTEN);
			state->pwrup[off_core] =
				FUNC4(pi, RADIO_2057, TX, off_core,
						TXRXCOUPLE_2G_PWRUP);
			state->atten[off_core] =
				FUNC4(pi, RADIO_2057, TX, off_core,
						TXRXCOUPLE_2G_ATTEN);

			FUNC6(pi, RADIO_2057, TX, core,
					 TXRXCOUPLE_2G_PWRUP, 0xc);

			if ((pi->pubpi.radiorev == 3) ||
			    (pi->pubpi.radiorev == 4) ||
			    (pi->pubpi.radiorev == 6))
				FUNC6(pi, RADIO_2057, TX, core,
						 TXRXCOUPLE_2G_ATTEN, 0xf0);
			else if (pi->pubpi.radiorev == 5)
				FUNC6(pi, RADIO_2057, TX, core,
						 TXRXCOUPLE_2G_ATTEN,
						 (core == 0) ? 0xf7 : 0xf2);
			else if ((pi->pubpi.radiorev == 7)
				 || (pi->pubpi.radiorev == 8))
				FUNC6(pi, RADIO_2057, TX, core,
						 TXRXCOUPLE_2G_ATTEN, 0xf0);

			FUNC6(pi, RADIO_2057, TX, off_core,
					 TXRXCOUPLE_2G_PWRUP, 0x0);
			FUNC6(pi, RADIO_2057, TX, off_core,
					 TXRXCOUPLE_2G_ATTEN, 0xff);
		} else {
			state->pwrup[core] =
				FUNC4(pi, RADIO_2057, TX, core,
						TXRXCOUPLE_5G_PWRUP);
			state->atten[core] =
				FUNC4(pi, RADIO_2057, TX, core,
						TXRXCOUPLE_5G_ATTEN);
			state->pwrup[off_core] =
				FUNC4(pi, RADIO_2057, TX, off_core,
						TXRXCOUPLE_5G_PWRUP);
			state->atten[off_core] =
				FUNC4(pi, RADIO_2057, TX, off_core,
						TXRXCOUPLE_5G_ATTEN);

			FUNC6(pi, RADIO_2057, TX, core,
					 TXRXCOUPLE_5G_PWRUP, 0xc);

			if ((pi->pubpi.radiorev == 7)
			    || (pi->pubpi.radiorev == 8))
				FUNC6(pi, RADIO_2057, TX, core,
						 TXRXCOUPLE_5G_ATTEN, 0xf4);

			else
				FUNC6(pi, RADIO_2057, TX, core,
						 TXRXCOUPLE_5G_ATTEN, 0xf0);

			FUNC6(pi, RADIO_2057, TX, off_core,
					 TXRXCOUPLE_5G_PWRUP, 0x0);
			FUNC6(pi, RADIO_2057, TX, off_core,
					 TXRXCOUPLE_5G_ATTEN, 0xff);
		}

		tone_freq = 4000;

		FUNC13(pi, tone_freq, 181, 0, 0, false);

		FUNC7(pi, (core == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (NPHY_PAPD_COMP_ON) << 0);

		FUNC7(pi, (core == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x1 << 13), (1) << 13);

		FUNC7(pi, (off_core == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (NPHY_PAPD_COMP_OFF) << 0);

		FUNC7(pi, (off_core == PHY_CORE_0) ? 0x2a3 :
			    0x2a4, (0x1 << 13), (0) << 13);

	} else {

		FUNC11(pi, (0x1 << 12), 0, 0x3, 0);

		FUNC11(pi, (0x1 << 3), 1, 0, 0);

		FUNC11(pi, (0x1 << 0), 0, 0x3, 0);

		FUNC11(pi, (0x1 << 2), 1, 0x3, 0);
		FUNC11(pi, (0x1 << 1), 1, 0x3, 0);

		state->afectrl[core] = FUNC8(pi, (core == PHY_CORE_0) ?
						    0xa6 : 0xa7);
		state->afeoverride[core] =
			FUNC8(pi, (core == PHY_CORE_0) ? 0x8f : 0xa5);

		FUNC7(pi, ((core == PHY_CORE_0) ? 0xa6 : 0xa7),
			    (0x1 << 0) | (0x1 << 1) | (0x1 << 2), 0);
		FUNC7(pi, ((core == PHY_CORE_0) ? 0x8f :
				 0xa5),
			    (0x1 << 0) |
			    (0x1 << 1) |
			    (0x1 << 2), (0x1 << 0) | (0x1 << 1) | (0x1 << 2));

		state->vga_master[core] =
			FUNC3(pi, RADIO_2056, RX, core, VGA_MASTER);
		FUNC5(pi, RADIO_2056, RX, core, VGA_MASTER, 0x2b);
		if (FUNC0(pi->radio_chanspec)) {
			state->fbmix[core] =
				FUNC3(pi, RADIO_2056, RX, core,
						TXFBMIX_G);
			state->intpa_master[core] =
				FUNC3(pi, RADIO_2056, TX, core,
						INTPAG_MASTER);

			FUNC5(pi, RADIO_2056, RX, core, TXFBMIX_G,
					 0x03);
			FUNC5(pi, RADIO_2056, TX, core,
					 INTPAG_MASTER, 0x04);
		} else {
			state->fbmix[core] =
				FUNC3(pi, RADIO_2056, RX, core,
						TXFBMIX_A);
			state->intpa_master[core] =
				FUNC3(pi, RADIO_2056, TX, core,
						INTPAA_MASTER);

			FUNC5(pi, RADIO_2056, RX, core, TXFBMIX_A,
					 0x03);
			FUNC5(pi, RADIO_2056, TX, core,
					 INTPAA_MASTER, 0x04);

		}

		tone_freq = 4000;

		FUNC13(pi, tone_freq, 181, 0, 0, false);

		FUNC7(pi, (core == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (1) << 0);

		FUNC7(pi, (off_core == PHY_CORE_0) ? 0x297 :
			    0x29b, (0x1 << 0), (0) << 0);

		FUNC11(pi, (0x1 << 3), 0, 0x3, 0);
	}
}