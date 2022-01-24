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
struct pci_dev {int dummy; } ;
struct ieee80211_channel {scalar_t__ band; scalar_t__ hw_value; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_radio; scalar_t__ ah_bwmode; struct pci_dev* pdev; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 scalar_t__ AR5K_AR5211 ; 
 scalar_t__ AR5K_AR5212 ; 
 scalar_t__ AR5K_BWMODE_10MHZ ; 
 scalar_t__ AR5K_BWMODE_40MHZ ; 
 scalar_t__ AR5K_BWMODE_DEFAULT ; 
 scalar_t__ AR5K_MODE_11B ; 
 int /*<<< orphan*/  AR5K_PHY_MODE ; 
 int AR5K_PHY_MODE_FREQ_2GHZ ; 
 int AR5K_PHY_MODE_FREQ_5GHZ ; 
 int AR5K_PHY_MODE_HALF_RATE ; 
 int AR5K_PHY_MODE_MOD_CCK ; 
 int AR5K_PHY_MODE_MOD_DYN ; 
 int AR5K_PHY_MODE_MOD_OFDM ; 
 int AR5K_PHY_MODE_QUARTER_RATE ; 
 int AR5K_PHY_MODE_RAD_RF5111 ; 
 int AR5K_PHY_MODE_RAD_RF5112 ; 
 int /*<<< orphan*/  AR5K_PHY_PLL ; 
 int AR5K_PHY_PLL_40MHZ ; 
 int AR5K_PHY_PLL_40MHZ_5413 ; 
 int AR5K_PHY_PLL_44MHZ ; 
 int AR5K_PHY_PLL_HALF_RATE ; 
 int AR5K_PHY_PLL_QUARTER_RATE ; 
 int AR5K_PHY_PLL_RF5111 ; 
 int AR5K_PHY_PLL_RF5112 ; 
 int /*<<< orphan*/  AR5K_PHY_TURBO ; 
 int AR5K_PHY_TURBO_MODE ; 
 int AR5K_PHY_TURBO_SHORT ; 
 int /*<<< orphan*/  AR5K_PM_AWAKE ; 
 int AR5K_RESET_CTL_BASEBAND ; 
 int AR5K_RESET_CTL_DMA ; 
 int AR5K_RESET_CTL_MAC ; 
 int AR5K_RESET_CTL_PCI ; 
 int AR5K_RESET_CTL_PCU ; 
 int AR5K_RESET_CTL_PHY ; 
 scalar_t__ AR5K_RF2425 ; 
 scalar_t__ AR5K_RF5112 ; 
 scalar_t__ AR5K_RF5413 ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,char*) ; 
 scalar_t__ ATH_AHB ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 scalar_t__ FUNC1 (struct ath5k_hw*) ; 
 int FUNC2 (struct ath5k_hw*,int) ; 
 int FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ath5k_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ath5k_hw*,int) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

int
FUNC9(struct ath5k_hw *ah, struct ieee80211_channel *channel)
{
	struct pci_dev *pdev = ah->pdev;
	u32 turbo, mode, clock, bus_flags;
	int ret;

	turbo = 0;
	mode = 0;
	clock = 0;

	if ((FUNC1(ah) != ATH_AHB) || channel) {
		/* Wakeup the device */
		ret = FUNC5(ah, AR5K_PM_AWAKE, true, 0);
		if (ret) {
			FUNC0(ah, "failed to wakeup the MAC Chip\n");
			return ret;
		}
	}

	/*
	 * Put chipset on warm reset...
	 *
	 * Note: putting PCI core on warm reset on PCI-E cards
	 * results card to hang and always return 0xffff... so
	 * we ignore that flag for PCI-E cards. On PCI cards
	 * this flag gets cleared after 64 PCI clocks.
	 */
	bus_flags = (pdev && FUNC7(pdev)) ? 0 : AR5K_RESET_CTL_PCI;

	if (ah->ah_version == AR5K_AR5210) {
		ret = FUNC2(ah, AR5K_RESET_CTL_PCU |
			AR5K_RESET_CTL_MAC | AR5K_RESET_CTL_DMA |
			AR5K_RESET_CTL_PHY | AR5K_RESET_CTL_PCI);
			FUNC8(2000, 2500);
	} else {
		if (FUNC1(ah) == ATH_AHB)
			ret = FUNC6(ah, AR5K_RESET_CTL_PCU |
				AR5K_RESET_CTL_BASEBAND);
		else
			ret = FUNC2(ah, AR5K_RESET_CTL_PCU |
				AR5K_RESET_CTL_BASEBAND | bus_flags);
	}

	if (ret) {
		FUNC0(ah, "failed to reset the MAC Chip\n");
		return -EIO;
	}

	/* ...wakeup again!...*/
	ret = FUNC5(ah, AR5K_PM_AWAKE, true, 0);
	if (ret) {
		FUNC0(ah, "failed to resume the MAC Chip\n");
		return ret;
	}

	/* ...reset configuration register on Wisoc ...
	 * ...clear reset control register and pull device out of
	 * warm reset on others */
	if (FUNC1(ah) == ATH_AHB)
		ret = FUNC6(ah, 0);
	else
		ret = FUNC2(ah, 0);

	if (ret) {
		FUNC0(ah, "failed to warm reset the MAC Chip\n");
		return -EIO;
	}

	/* On initialization skip PLL programming since we don't have
	 * a channel / mode set yet */
	if (!channel)
		return 0;

	if (ah->ah_version != AR5K_AR5210) {
		/*
		 * Get channel mode flags
		 */

		if (ah->ah_radio >= AR5K_RF5112) {
			mode = AR5K_PHY_MODE_RAD_RF5112;
			clock = AR5K_PHY_PLL_RF5112;
		} else {
			mode = AR5K_PHY_MODE_RAD_RF5111;	/*Zero*/
			clock = AR5K_PHY_PLL_RF5111;		/*Zero*/
		}

		if (channel->band == IEEE80211_BAND_2GHZ) {
			mode |= AR5K_PHY_MODE_FREQ_2GHZ;
			clock |= AR5K_PHY_PLL_44MHZ;

			if (channel->hw_value == AR5K_MODE_11B) {
				mode |= AR5K_PHY_MODE_MOD_CCK;
			} else {
				/* XXX Dynamic OFDM/CCK is not supported by the
				 * AR5211 so we set MOD_OFDM for plain g (no
				 * CCK headers) operation. We need to test
				 * this, 5211 might support ofdm-only g after
				 * all, there are also initial register values
				 * in the code for g mode (see initvals.c).
				 */
				if (ah->ah_version == AR5K_AR5211)
					mode |= AR5K_PHY_MODE_MOD_OFDM;
				else
					mode |= AR5K_PHY_MODE_MOD_DYN;
			}
		} else if (channel->band == IEEE80211_BAND_5GHZ) {
			mode |= (AR5K_PHY_MODE_FREQ_5GHZ |
				 AR5K_PHY_MODE_MOD_OFDM);

			/* Different PLL setting for 5413 */
			if (ah->ah_radio == AR5K_RF5413)
				clock = AR5K_PHY_PLL_40MHZ_5413;
			else
				clock |= AR5K_PHY_PLL_40MHZ;
		} else {
			FUNC0(ah, "invalid radio frequency mode\n");
			return -EINVAL;
		}

		/*XXX: Can bwmode be used with dynamic mode ?
		 * (I don't think it supports 44MHz) */
		/* On 2425 initvals TURBO_SHORT is not present */
		if (ah->ah_bwmode == AR5K_BWMODE_40MHZ) {
			turbo = AR5K_PHY_TURBO_MODE;
			if (ah->ah_radio != AR5K_RF2425)
				turbo |= AR5K_PHY_TURBO_SHORT;
		} else if (ah->ah_bwmode != AR5K_BWMODE_DEFAULT) {
			if (ah->ah_radio == AR5K_RF5413) {
				mode |= (ah->ah_bwmode == AR5K_BWMODE_10MHZ) ?
					AR5K_PHY_MODE_HALF_RATE :
					AR5K_PHY_MODE_QUARTER_RATE;
			} else if (ah->ah_version == AR5K_AR5212) {
				clock |= (ah->ah_bwmode == AR5K_BWMODE_10MHZ) ?
					AR5K_PHY_PLL_HALF_RATE :
					AR5K_PHY_PLL_QUARTER_RATE;
			}
		}

	} else { /* Reset the device */

		/* ...enable Atheros turbo mode if requested */
		if (ah->ah_bwmode == AR5K_BWMODE_40MHZ)
			FUNC4(ah, AR5K_PHY_TURBO_MODE,
					AR5K_PHY_TURBO);
	}

	if (ah->ah_version != AR5K_AR5210) {

		/* ...update PLL if needed */
		if (FUNC3(ah, AR5K_PHY_PLL) != clock) {
			FUNC4(ah, clock, AR5K_PHY_PLL);
			FUNC8(300, 350);
		}

		/* ...set the PHY operating mode */
		FUNC4(ah, mode, AR5K_PHY_MODE);
		FUNC4(ah, turbo, AR5K_PHY_TURBO);
	}

	return 0;
}