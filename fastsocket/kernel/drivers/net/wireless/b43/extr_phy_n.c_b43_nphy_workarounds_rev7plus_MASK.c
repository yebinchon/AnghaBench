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
typedef  int u32 ;
typedef  int u16 ;
struct ssb_sprom {int boardflags2_hi; scalar_t__ revision; } ;
struct b43_phy {int rev; int radio_rev; int channel_freq; scalar_t__ is_40mhz; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; TYPE_1__* dev; } ;
struct TYPE_2__ {struct ssb_sprom* bus_sprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int B43_BFH2_IPALVLSHIFT_3P3 ; 
 int /*<<< orphan*/  B43_NPHY_AFECTL_C1 ; 
 int /*<<< orphan*/  B43_NPHY_AFECTL_C2 ; 
 int /*<<< orphan*/  B43_NPHY_AFECTL_OVER ; 
 int /*<<< orphan*/  B43_NPHY_AFECTL_OVER1 ; 
 int B43_NPHY_ENDROP_TLEN ; 
 int /*<<< orphan*/  B43_NPHY_EPS_OVERRIDEI_0 ; 
 int /*<<< orphan*/  B43_NPHY_EPS_OVERRIDEI_1 ; 
 int /*<<< orphan*/  B43_NPHY_FINERX2_CGC ; 
 int B43_NPHY_FORCEFRONT0 ; 
 int B43_NPHY_FORCEFRONT1 ; 
 int /*<<< orphan*/  B43_NPHY_FREQGAIN0 ; 
 int /*<<< orphan*/  B43_NPHY_FREQGAIN1 ; 
 int /*<<< orphan*/  B43_NPHY_FREQGAIN2 ; 
 int /*<<< orphan*/  B43_NPHY_FREQGAIN3 ; 
 int /*<<< orphan*/  B43_NPHY_FREQGAIN4 ; 
 int /*<<< orphan*/  B43_NPHY_FREQGAIN5 ; 
 int /*<<< orphan*/  B43_NPHY_FREQGAIN6 ; 
 int /*<<< orphan*/  B43_NPHY_FREQGAIN7 ; 
 int /*<<< orphan*/  B43_NPHY_TXTAILCNT ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 scalar_t__ FUNC5 (struct b43_wldev*) ; 
 int FUNC6 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*,int,int) ; 
 int FUNC16 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC19(struct b43_wldev *dev)
{
	struct ssb_sprom *sprom = dev->dev->bus_sprom;
	struct b43_phy *phy = &dev->phy;

	u8 rx2tx_events_ipa[9] = { 0x0, 0x1, 0x2, 0x8, 0x5, 0x6, 0xF, 0x3,
					0x1F };
	u8 rx2tx_delays_ipa[9] = { 8, 6, 6, 4, 4, 16, 43, 1, 1 };

	u16 ntab7_15e_16e[] = { 0x10f, 0x10f };
	u8 ntab7_138_146[] = { 0x11, 0x11 };
	u8 ntab7_133[] = { 0x77, 0x11, 0x11 };

	u16 lpf_20, lpf_40, lpf_11b;
	u16 bcap_val, bcap_val_11b, bcap_val_11n_20, bcap_val_11n_40;
	u16 scap_val, scap_val_11b, scap_val_11n_20, scap_val_11n_40;
	bool rccal_ovrd = false;

	u16 rx2tx_lut_20_11b, rx2tx_lut_20_11n, rx2tx_lut_40_11n;
	u16 bias, conv, filt;

	u32 tmp32;
	u8 core;

	if (phy->rev == 7) {
		FUNC14(dev, B43_NPHY_FINERX2_CGC, 0x10);
		FUNC13(dev, B43_NPHY_FREQGAIN0, 0xFF80, 0x0020);
		FUNC13(dev, B43_NPHY_FREQGAIN0, 0x80FF, 0x2700);
		FUNC13(dev, B43_NPHY_FREQGAIN1, 0xFF80, 0x002E);
		FUNC13(dev, B43_NPHY_FREQGAIN1, 0x80FF, 0x3300);
		FUNC13(dev, B43_NPHY_FREQGAIN2, 0xFF80, 0x0037);
		FUNC13(dev, B43_NPHY_FREQGAIN2, 0x80FF, 0x3A00);
		FUNC13(dev, B43_NPHY_FREQGAIN3, 0xFF80, 0x003C);
		FUNC13(dev, B43_NPHY_FREQGAIN3, 0x80FF, 0x3E00);
		FUNC13(dev, B43_NPHY_FREQGAIN4, 0xFF80, 0x003E);
		FUNC13(dev, B43_NPHY_FREQGAIN4, 0x80FF, 0x3F00);
		FUNC13(dev, B43_NPHY_FREQGAIN5, 0xFF80, 0x0040);
		FUNC13(dev, B43_NPHY_FREQGAIN5, 0x80FF, 0x4000);
		FUNC13(dev, B43_NPHY_FREQGAIN6, 0xFF80, 0x0040);
		FUNC13(dev, B43_NPHY_FREQGAIN6, 0x80FF, 0x4000);
		FUNC13(dev, B43_NPHY_FREQGAIN7, 0xFF80, 0x0040);
		FUNC13(dev, B43_NPHY_FREQGAIN7, 0x80FF, 0x4000);
	}
	if (phy->rev <= 8) {
		FUNC15(dev, B43_NPHY_FORCEFRONT0, 0x1B0);
		FUNC15(dev, B43_NPHY_FORCEFRONT1, 0x1B0);
	}
	if (phy->rev >= 8)
		FUNC13(dev, B43_NPHY_TXTAILCNT, ~0xFF, 0x72);

	FUNC10(dev, FUNC1(8, 0x00), 2);
	FUNC10(dev, FUNC1(8, 0x10), 2);
	tmp32 = FUNC9(dev, FUNC2(30, 0));
	tmp32 &= 0xffffff;
	FUNC10(dev, FUNC2(30, 0), tmp32);
	FUNC11(dev, FUNC1(7, 0x15e), 2, ntab7_15e_16e);
	FUNC11(dev, FUNC1(7, 0x16e), 2, ntab7_15e_16e);

	if (FUNC5(dev))
		FUNC8(dev, 0, rx2tx_events_ipa,
				rx2tx_delays_ipa, FUNC0(rx2tx_events_ipa));

	FUNC13(dev, B43_NPHY_EPS_OVERRIDEI_0, 0x3FFF, 0x4000);
	FUNC13(dev, B43_NPHY_EPS_OVERRIDEI_1, 0x3FFF, 0x4000);

	lpf_20 = FUNC6(dev, 0x154);
	lpf_40 = FUNC6(dev, 0x159);
	lpf_11b = FUNC6(dev, 0x152);
	if (FUNC5(dev)) {
		if ((phy->radio_rev == 5 && phy->is_40mhz) ||
		    phy->radio_rev == 7 || phy->radio_rev == 8) {
			bcap_val = FUNC16(dev, 0x16b);
			scap_val = FUNC16(dev, 0x16a);
			scap_val_11b = scap_val;
			bcap_val_11b = bcap_val;
			if (phy->radio_rev == 5 && phy->is_40mhz) {
				scap_val_11n_20 = scap_val;
				bcap_val_11n_20 = bcap_val;
				scap_val_11n_40 = bcap_val_11n_40 = 0xc;
				rccal_ovrd = true;
			} else { /* Rev 7/8 */
				lpf_20 = 4;
				lpf_11b = 1;
				if (FUNC3(dev->wl) == IEEE80211_BAND_2GHZ) {
					scap_val_11n_20 = 0xc;
					bcap_val_11n_20 = 0xc;
					scap_val_11n_40 = 0xa;
					bcap_val_11n_40 = 0xa;
				} else {
					scap_val_11n_20 = 0x14;
					bcap_val_11n_20 = 0x14;
					scap_val_11n_40 = 0xf;
					bcap_val_11n_40 = 0xf;
				}
				rccal_ovrd = true;
			}
		}
	} else {
		if (phy->radio_rev == 5) {
			lpf_20 = 1;
			lpf_40 = 3;
			bcap_val = FUNC16(dev, 0x16b);
			scap_val = FUNC16(dev, 0x16a);
			scap_val_11b = scap_val;
			bcap_val_11b = bcap_val;
			scap_val_11n_20 = 0x11;
			scap_val_11n_40 = 0x11;
			bcap_val_11n_20 = 0x13;
			bcap_val_11n_40 = 0x13;
			rccal_ovrd = true;
		}
	}
	if (rccal_ovrd) {
		rx2tx_lut_20_11b = (bcap_val_11b << 8) |
				   (scap_val_11b << 3) |
				   lpf_11b;
		rx2tx_lut_20_11n = (bcap_val_11n_20 << 8) |
				   (scap_val_11n_20 << 3) |
				   lpf_20;
		rx2tx_lut_40_11n = (bcap_val_11n_40 << 8) |
				   (scap_val_11n_40 << 3) |
				   lpf_40;
		for (core = 0; core < 2; core++) {
			FUNC10(dev, FUNC1(7, 0x152 + core * 16),
				       rx2tx_lut_20_11b);
			FUNC10(dev, FUNC1(7, 0x153 + core * 16),
				       rx2tx_lut_20_11n);
			FUNC10(dev, FUNC1(7, 0x154 + core * 16),
				       rx2tx_lut_20_11n);
			FUNC10(dev, FUNC1(7, 0x155 + core * 16),
				       rx2tx_lut_40_11n);
			FUNC10(dev, FUNC1(7, 0x156 + core * 16),
				       rx2tx_lut_40_11n);
			FUNC10(dev, FUNC1(7, 0x157 + core * 16),
				       rx2tx_lut_40_11n);
			FUNC10(dev, FUNC1(7, 0x158 + core * 16),
				       rx2tx_lut_40_11n);
			FUNC10(dev, FUNC1(7, 0x159 + core * 16),
				       rx2tx_lut_40_11n);
		}
		FUNC7(dev, 16, 1, 3, false, 2);
	}
	FUNC15(dev, 0x32F, 0x3);
	if (phy->radio_rev == 4 || phy->radio_rev == 6)
		FUNC7(dev, 4, 1, 3, false, 0);

	if (phy->radio_rev == 3 || phy->radio_rev == 4 || phy->radio_rev == 6) {
		if (sprom->revision &&
		    sprom->boardflags2_hi & B43_BFH2_IPALVLSHIFT_3P3) {
			FUNC18(dev, 0x5, 0x05);
			FUNC18(dev, 0x6, 0x30);
			FUNC18(dev, 0x7, 0x00);
			FUNC17(dev, 0x4f, 0x1);
			FUNC17(dev, 0xd4, 0x1);
			bias = 0x1f;
			conv = 0x6f;
			filt = 0xaa;
		} else {
			bias = 0x2b;
			conv = 0x7f;
			filt = 0xee;
		}
		if (FUNC3(dev->wl) == IEEE80211_BAND_2GHZ) {
			for (core = 0; core < 2; core++) {
				if (core == 0) {
					FUNC18(dev, 0x5F, bias);
					FUNC18(dev, 0x64, conv);
					FUNC18(dev, 0x66, filt);
				} else {
					FUNC18(dev, 0xE8, bias);
					FUNC18(dev, 0xE9, conv);
					FUNC18(dev, 0xEB, filt);
				}
			}
		}
	}

	if (FUNC5(dev)) {
		if (FUNC3(dev->wl) == IEEE80211_BAND_2GHZ) {
			if (phy->radio_rev == 3 || phy->radio_rev == 4 ||
			    phy->radio_rev == 6) {
				for (core = 0; core < 2; core++) {
					if (core == 0)
						FUNC18(dev, 0x51,
								0x7f);
					else
						FUNC18(dev, 0xd6,
								0x7f);
				}
			}
			if (phy->radio_rev == 3) {
				for (core = 0; core < 2; core++) {
					if (core == 0) {
						FUNC18(dev, 0x64,
								0x13);
						FUNC18(dev, 0x5F,
								0x1F);
						FUNC18(dev, 0x66,
								0xEE);
						FUNC18(dev, 0x59,
								0x8A);
						FUNC18(dev, 0x80,
								0x3E);
					} else {
						FUNC18(dev, 0x69,
								0x13);
						FUNC18(dev, 0xE8,
								0x1F);
						FUNC18(dev, 0xEB,
								0xEE);
						FUNC18(dev, 0xDE,
								0x8A);
						FUNC18(dev, 0x105,
								0x3E);
					}
				}
			} else if (phy->radio_rev == 7 || phy->radio_rev == 8) {
				if (!phy->is_40mhz) {
					FUNC18(dev, 0x5F, 0x14);
					FUNC18(dev, 0xE8, 0x12);
				} else {
					FUNC18(dev, 0x5F, 0x16);
					FUNC18(dev, 0xE8, 0x16);
				}
			}
		} else {
			u16 freq = phy->channel_freq;
			if ((freq >= 5180 && freq <= 5230) ||
			    (freq >= 5745 && freq <= 5805)) {
				FUNC18(dev, 0x7D, 0xFF);
				FUNC18(dev, 0xFE, 0xFF);
			}
		}
	} else {
		if (phy->radio_rev != 5) {
			for (core = 0; core < 2; core++) {
				if (core == 0) {
					FUNC18(dev, 0x5c, 0x61);
					FUNC18(dev, 0x51, 0x70);
				} else {
					FUNC18(dev, 0xe1, 0x61);
					FUNC18(dev, 0xd6, 0x70);
				}
			}
		}
	}

	if (phy->radio_rev == 4) {
		FUNC10(dev, FUNC1(8, 0x05), 0x20);
		FUNC10(dev, FUNC1(8, 0x15), 0x20);
		for (core = 0; core < 2; core++) {
			if (core == 0) {
				FUNC18(dev, 0x1a1, 0x00);
				FUNC18(dev, 0x1a2, 0x3f);
				FUNC18(dev, 0x1a6, 0x3f);
			} else {
				FUNC18(dev, 0x1a7, 0x00);
				FUNC18(dev, 0x1ab, 0x3f);
				FUNC18(dev, 0x1ac, 0x3f);
			}
		}
	} else {
		FUNC14(dev, B43_NPHY_AFECTL_C1, 0x4);
		FUNC14(dev, B43_NPHY_AFECTL_OVER1, 0x4);
		FUNC14(dev, B43_NPHY_AFECTL_C2, 0x4);
		FUNC14(dev, B43_NPHY_AFECTL_OVER, 0x4);

		FUNC12(dev, B43_NPHY_AFECTL_C1, ~0x1);
		FUNC14(dev, B43_NPHY_AFECTL_OVER1, 0x1);
		FUNC12(dev, B43_NPHY_AFECTL_C2, ~0x1);
		FUNC14(dev, B43_NPHY_AFECTL_OVER, 0x1);
		FUNC10(dev, FUNC1(8, 0x05), 0x20);
		FUNC10(dev, FUNC1(8, 0x15), 0x20);

		FUNC12(dev, B43_NPHY_AFECTL_C1, ~0x4);
		FUNC12(dev, B43_NPHY_AFECTL_OVER1, ~0x4);
		FUNC12(dev, B43_NPHY_AFECTL_C2, ~0x4);
		FUNC12(dev, B43_NPHY_AFECTL_OVER, ~0x4);
	}

	FUNC15(dev, B43_NPHY_ENDROP_TLEN, 0x2);

	FUNC10(dev, FUNC2(16, 0x100), 20);
	FUNC11(dev, FUNC1(7, 0x138), 2, ntab7_138_146);
	FUNC10(dev, FUNC1(7, 0x141), 0x77);
	FUNC11(dev, FUNC1(7, 0x133), 3, ntab7_133);
	FUNC11(dev, FUNC1(7, 0x146), 2, ntab7_138_146);
	FUNC10(dev, FUNC1(7, 0x123), 0x77);
	FUNC10(dev, FUNC1(7, 0x12A), 0x77);

	if (!phy->is_40mhz) {
		FUNC10(dev, FUNC2(16, 0x03), 0x18D);
		FUNC10(dev, FUNC2(16, 0x7F), 0x18D);
	} else {
		FUNC10(dev, FUNC2(16, 0x03), 0x14D);
		FUNC10(dev, FUNC2(16, 0x7F), 0x14D);
	}

	FUNC4(dev);

	/* TODO
	b43_ntab_write_bulk(dev, B43_NTAB16(8, 0x08), 4,
			    aux_adc_vmid_rev7_core0);
	b43_ntab_write_bulk(dev, B43_NTAB16(8, 0x18), 4,
			    aux_adc_vmid_rev7_core1);
	b43_ntab_write_bulk(dev, B43_NTAB16(8, 0x0C), 4,
			    aux_adc_gain_rev7);
	b43_ntab_write_bulk(dev, B43_NTAB16(8, 0x1C), 4,
			    aux_adc_gain_rev7);
	*/
}