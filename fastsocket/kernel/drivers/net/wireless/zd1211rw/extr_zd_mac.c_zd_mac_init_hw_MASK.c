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
typedef  int /*<<< orphan*/  u8 ;
struct zd_chip {int dummy; } ;
struct zd_mac {int /*<<< orphan*/  regdomain; int /*<<< orphan*/  lock; int /*<<< orphan*/  default_regdomain; struct zd_chip chip; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENC_SNIFFER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_chip*) ; 
 int FUNC6 (struct zd_chip*) ; 
 int FUNC7 (struct zd_chip*) ; 
 struct zd_mac* FUNC8 (struct ieee80211_hw*) ; 
 int FUNC9 (struct zd_chip*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (struct zd_chip*,int /*<<< orphan*/ ) ; 

int FUNC12(struct ieee80211_hw *hw)
{
	int r;
	struct zd_mac *mac = FUNC8(hw);
	struct zd_chip *chip = &mac->chip;
	char alpha2[2];
	u8 default_regdomain;

	r = FUNC6(chip);
	if (r)
		goto out;
	r = FUNC7(chip);
	if (r)
		goto disable_int;

	FUNC0(!FUNC1());

	r = FUNC9(chip, &default_regdomain);
	if (r)
		goto disable_int;
	FUNC3(&mac->lock);
	mac->regdomain = mac->default_regdomain = default_regdomain;
	FUNC4(&mac->lock);

	/* We must inform the device that we are doing encryption/decryption in
	 * software at the moment. */
	r = FUNC11(chip, ENC_SNIFFER);
	if (r)
		goto disable_int;

	r = FUNC10(mac->regdomain, alpha2);
	if (r)
		goto disable_int;

	r = FUNC2(hw->wiphy, alpha2);
disable_int:
	FUNC5(chip);
out:
	return r;
}