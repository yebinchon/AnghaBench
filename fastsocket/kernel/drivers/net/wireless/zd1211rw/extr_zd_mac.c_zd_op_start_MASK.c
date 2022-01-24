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
struct zd_usb {int /*<<< orphan*/  initialized; } ;
struct zd_chip {struct zd_usb usb; } ;
struct zd_mac {int /*<<< orphan*/  flags; struct zd_chip chip; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int CR_RATES_80211B ; 
 int CR_RATES_80211G ; 
 int /*<<< orphan*/  ZD_DEVICE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct zd_mac*) ; 
 int FUNC4 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct zd_chip*) ; 
 int FUNC7 (struct zd_chip*) ; 
 int FUNC8 (struct zd_chip*) ; 
 int FUNC9 (struct zd_chip*) ; 
 int FUNC10 (struct zd_chip*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct zd_chip*) ; 
 int FUNC12 (struct zd_chip*) ; 
 struct zd_mac* FUNC13 (struct ieee80211_hw*) ; 
 int FUNC14 (struct zd_usb*) ; 

int FUNC15(struct ieee80211_hw *hw)
{
	struct zd_mac *mac = FUNC13(hw);
	struct zd_chip *chip = &mac->chip;
	struct zd_usb *usb = &chip->usb;
	int r;

	if (!usb->initialized) {
		r = FUNC14(usb);
		if (r)
			goto out;
	}

	r = FUNC8(chip);
	if (r < 0)
		goto out;

	r = FUNC10(chip, CR_RATES_80211B | CR_RATES_80211G);
	if (r < 0)
		goto disable_int;
	r = FUNC4(mac);
	if (r)
		goto disable_int;
	r = FUNC3(mac);
	if (r)
		goto disable_int;
	r = FUNC12(chip);
	if (r < 0)
		goto disable_int;
	r = FUNC9(chip);
	if (r < 0)
		goto disable_radio;
	r = FUNC7(chip);
	if (r < 0)
		goto disable_rxtx;

	FUNC1(mac);
	FUNC0(mac);
	FUNC2(ZD_DEVICE_RUNNING, &mac->flags);
	return 0;
disable_rxtx:
	FUNC6(chip);
disable_radio:
	FUNC11(chip);
disable_int:
	FUNC5(chip);
out:
	return r;
}