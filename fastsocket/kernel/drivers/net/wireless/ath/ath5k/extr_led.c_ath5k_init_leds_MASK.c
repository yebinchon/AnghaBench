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
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct ath5k_hw {int /*<<< orphan*/  tx_led; int /*<<< orphan*/  rx_led; int /*<<< orphan*/  status; int /*<<< orphan*/  led_on; int /*<<< orphan*/  led_pin; struct pci_dev* pdev; struct ieee80211_hw* hw; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  ATH5K_LED_MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH_STAT_LEDSOFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ath5k_led_devices ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*) ; 
 int FUNC4 (struct ath5k_hw*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 struct pci_device_id* FUNC7 (int /*<<< orphan*/ *,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct ath5k_hw *ah)
{
	int ret = 0;
	struct ieee80211_hw *hw = ah->hw;
#ifndef CONFIG_ATHEROS_AR231X
	struct pci_dev *pdev = ah->pdev;
#endif
	char name[ATH5K_LED_MAX_NAME_LEN + 1];
	const struct pci_device_id *match;

	if (!ah->pdev)
		return 0;

#ifdef CONFIG_ATHEROS_AR231X
	match = NULL;
#else
	match = FUNC7(&ath5k_led_devices[0], pdev);
#endif
	if (match) {
		FUNC2(ATH_STAT_LEDSOFT, ah->status);
		ah->led_pin = FUNC0(match->driver_data);
		ah->led_on = FUNC1(match->driver_data);
	}

	if (!FUNC9(ATH_STAT_LEDSOFT, ah->status))
		goto out;

	FUNC3(ah);

	FUNC8(name, sizeof(name), "ath5k-%s::rx", FUNC10(hw->wiphy));
	ret = FUNC4(ah, &ah->rx_led, name,
		FUNC5(hw));
	if (ret)
		goto out;

	FUNC8(name, sizeof(name), "ath5k-%s::tx", FUNC10(hw->wiphy));
	ret = FUNC4(ah, &ah->tx_led, name,
		FUNC6(hw));
out:
	return ret;
}