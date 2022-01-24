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
typedef  int uint ;
typedef  int u8 ;
typedef  int u32 ;
struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_2__ {scalar_t__ bandtype; } ;

/* Variables and functions */
 scalar_t__ APHY_PREAMBLE_TIME ; 
 int APHY_SERVICE_NBITS ; 
 scalar_t__ APHY_SIGNAL_TIME ; 
 int APHY_SYMBOL_TIME ; 
 int APHY_TAIL_NBITS ; 
 scalar_t__ BPHY_PLCP_SHORT_TIME ; 
 scalar_t__ BPHY_PLCP_TIME ; 
 int BRCMS_SHORT_PREAMBLE ; 
 scalar_t__ BRCM_BAND_2G ; 
 scalar_t__ DOT11_OFDM_SIGNAL_EXTENSION ; 
 scalar_t__ PREN_PREAMBLE ; 
 int PREN_PREAMBLE_EXT ; 
 int RSPEC_RATE_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static uint
FUNC8(struct brcms_c_info *wlc, u32 ratespec,
		   u8 preamble_type, uint dur)
{
	uint nsyms, mac_len, Ndps, kNdps;
	uint rate = FUNC4(ratespec);

	if (FUNC0(ratespec)) {
		uint mcs = ratespec & RSPEC_RATE_MASK;
		int tot_streams = FUNC3(mcs) + FUNC7(ratespec);
		dur -= PREN_PREAMBLE + (tot_streams * PREN_PREAMBLE_EXT);
		/* payload calculation matches that of regular ofdm */
		if (wlc->band->bandtype == BRCM_BAND_2G)
			dur -= DOT11_OFDM_SIGNAL_EXTENSION;
		/* kNdbps = kbps * 4 */
		kNdps =	FUNC2(mcs, FUNC5(ratespec),
				   FUNC6(ratespec)) * 4;
		nsyms = dur / APHY_SYMBOL_TIME;
		mac_len =
		    ((nsyms * kNdps) -
		     ((APHY_SERVICE_NBITS + APHY_TAIL_NBITS) * 1000)) / 8000;
	} else if (FUNC1(ratespec)) {
		dur -= APHY_PREAMBLE_TIME;
		dur -= APHY_SIGNAL_TIME;
		/* Ndbps = Mbps * 4 = rate(500Kbps) * 2 */
		Ndps = rate * 2;
		nsyms = dur / APHY_SYMBOL_TIME;
		mac_len =
		    ((nsyms * Ndps) -
		     (APHY_SERVICE_NBITS + APHY_TAIL_NBITS)) / 8;
	} else {
		if (preamble_type & BRCMS_SHORT_PREAMBLE)
			dur -= BPHY_PLCP_SHORT_TIME;
		else
			dur -= BPHY_PLCP_TIME;
		mac_len = dur * rate;
		/* divide out factor of 2 in rate (1/2 mbps) */
		mac_len = mac_len / 8 / 2;
	}
	return mac_len;
}