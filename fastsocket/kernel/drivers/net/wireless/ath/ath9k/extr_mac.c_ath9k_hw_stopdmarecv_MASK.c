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
typedef  int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int AH_RX_STOP_DMA_TIMEOUT ; 
 int AH_TIME_QUANTUM ; 
 int /*<<< orphan*/  AR_CR ; 
 int AR_CR_RXD ; 
 int AR_CR_RXE ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  AR_DMADBG_7 ; 
 int /*<<< orphan*/  AR_MACMISC ; 
 int AR_MACMISC_DMA_OBS_LINE_8 ; 
 int AR_MACMISC_DMA_OBS_S ; 
 int AR_MACMISC_MISC_OBS_BUS_1 ; 
 int AR_MACMISC_MISC_OBS_BUS_MSB_S ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

bool FUNC6(struct ath_hw *ah, bool *reset)
{
#define AH_RX_STOP_DMA_TIMEOUT 10000   /* usec */
	struct ath_common *common = FUNC3(ah);
	u32 mac_status, last_mac_status = 0;
	int i;

	/* Enable access to the DMA observation bus */
	FUNC2(ah, AR_MACMISC,
		  ((AR_MACMISC_DMA_OBS_LINE_8 << AR_MACMISC_DMA_OBS_S) |
		   (AR_MACMISC_MISC_OBS_BUS_1 <<
		    AR_MACMISC_MISC_OBS_BUS_MSB_S)));

	FUNC2(ah, AR_CR, AR_CR_RXD);

	/* Wait for rx enable bit to go low */
	for (i = AH_RX_STOP_DMA_TIMEOUT / AH_TIME_QUANTUM; i != 0; i--) {
		if ((FUNC1(ah, AR_CR) & AR_CR_RXE) == 0)
			break;

		if (!FUNC0(ah)) {
			mac_status = FUNC1(ah, AR_DMADBG_7) & 0x7f0;
			if (mac_status == 0x1c0 && mac_status == last_mac_status) {
				*reset = true;
				break;
			}

			last_mac_status = mac_status;
		}

		FUNC5(AH_TIME_QUANTUM);
	}

	if (i == 0) {
		FUNC4(common,
			"DMA failed to stop in %d ms AR_CR=0x%08x AR_DIAG_SW=0x%08x DMADBG_7=0x%08x\n",
			AH_RX_STOP_DMA_TIMEOUT / 1000,
			FUNC1(ah, AR_CR),
			FUNC1(ah, AR_DIAG_SW),
			FUNC1(ah, AR_DMADBG_7));
		return false;
	} else {
		return true;
	}

#undef AH_RX_STOP_DMA_TIMEOUT
}