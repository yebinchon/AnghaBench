#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
typedef  int u8 ;
typedef  int u32 ;
struct brcms_c_info {TYPE_3__* band; TYPE_2__* pub; TYPE_1__* hw; } ;
struct TYPE_6__ {scalar_t__ bandtype; } ;
struct TYPE_5__ {int /*<<< orphan*/  unit; } ;
struct TYPE_4__ {int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 int APHY_PREAMBLE_TIME ; 
 int APHY_SERVICE_NBITS ; 
 scalar_t__ APHY_SIGNAL_TIME ; 
 int APHY_SYMBOL_TIME ; 
 int APHY_TAIL_NBITS ; 
 scalar_t__ BPHY_PLCP_SHORT_TIME ; 
 scalar_t__ BPHY_PLCP_TIME ; 
 int BRCMS_MM_PREAMBLE ; 
 int BRCMS_SHORT_PREAMBLE ; 
 scalar_t__ BRCM_BAND_2G ; 
 int BRCM_RATE_1M ; 
 int FUNC0 (int,int) ; 
 scalar_t__ DOT11_OFDM_SIGNAL_EXTENSION ; 
 scalar_t__ PREN_MM_EXT ; 
 int PREN_PREAMBLE ; 
 int PREN_PREAMBLE_EXT ; 
 int RSPEC_RATE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static uint FUNC10(struct brcms_c_info *wlc, u32 ratespec,
				    u8 preamble_type, uint mac_len)
{
	uint nsyms, dur = 0, Ndps, kNdps;
	uint rate = FUNC6(ratespec);

	if (rate == 0) {
		FUNC1(wlc->hw->d11core, "wl%d: WAR: using rate of 1 mbps\n",
			  wlc->pub->unit);
		rate = BRCM_RATE_1M;
	}

	if (FUNC2(ratespec)) {
		uint mcs = ratespec & RSPEC_RATE_MASK;
		int tot_streams = FUNC5(mcs) + FUNC9(ratespec);

		dur = PREN_PREAMBLE + (tot_streams * PREN_PREAMBLE_EXT);
		if (preamble_type == BRCMS_MM_PREAMBLE)
			dur += PREN_MM_EXT;
		/* 1000Ndbps = kbps * 4 */
		kNdps = FUNC4(mcs, FUNC7(ratespec),
				   FUNC8(ratespec)) * 4;

		if (FUNC9(ratespec) == 0)
			nsyms =
			    FUNC0((APHY_SERVICE_NBITS + 8 * mac_len +
				  APHY_TAIL_NBITS) * 1000, kNdps);
		else
			/* STBC needs to have even number of symbols */
			nsyms =
			    2 *
			    FUNC0((APHY_SERVICE_NBITS + 8 * mac_len +
				  APHY_TAIL_NBITS) * 1000, 2 * kNdps);

		dur += APHY_SYMBOL_TIME * nsyms;
		if (wlc->band->bandtype == BRCM_BAND_2G)
			dur += DOT11_OFDM_SIGNAL_EXTENSION;
	} else if (FUNC3(rate)) {
		dur = APHY_PREAMBLE_TIME;
		dur += APHY_SIGNAL_TIME;
		/* Ndbps = Mbps * 4 = rate(500Kbps) * 2 */
		Ndps = rate * 2;
		/* NSyms = CEILING((SERVICE + 8*NBytes + TAIL) / Ndbps) */
		nsyms =
		    FUNC0((APHY_SERVICE_NBITS + 8 * mac_len + APHY_TAIL_NBITS),
			 Ndps);
		dur += APHY_SYMBOL_TIME * nsyms;
		if (wlc->band->bandtype == BRCM_BAND_2G)
			dur += DOT11_OFDM_SIGNAL_EXTENSION;
	} else {
		/*
		 * calc # bits * 2 so factor of 2 in rate (1/2 mbps)
		 * will divide out
		 */
		mac_len = mac_len * 8 * 2;
		/* calc ceiling of bits/rate = microseconds of air time */
		dur = (mac_len + rate - 1) / rate;
		if (preamble_type & BRCMS_SHORT_PREAMBLE)
			dur += BPHY_PLCP_SHORT_TIME;
		else
			dur += BPHY_PLCP_TIME;
	}
	return dur;
}