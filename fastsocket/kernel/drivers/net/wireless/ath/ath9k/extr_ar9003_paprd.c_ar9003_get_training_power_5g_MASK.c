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
struct ath_hw {int /*<<< orphan*/  txchainmask; scalar_t__ paprd_target_power; struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_POWERTX_RATE6 ; 
 int /*<<< orphan*/  AR_PHY_POWERTX_RATE6_POWERTXHT20_5 ; 
 int /*<<< orphan*/  AR_PHY_POWERTX_RATE8 ; 
 int /*<<< orphan*/  AR_PHY_POWERTX_RATE8_POWERTXHT40_5 ; 
 int /*<<< orphan*/  CALIBRATE ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 unsigned int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (struct ath_hw*,struct ath9k_channel*) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ath_hw *ah)
{
	struct ath_common *common = FUNC4(ah);
	struct ath9k_channel *chan = ah->curchan;
	unsigned int power, scale, delta;

	scale = FUNC3(ah, chan);

	if (FUNC0(chan))
		power = FUNC1(ah, AR_PHY_POWERTX_RATE8,
			AR_PHY_POWERTX_RATE8_POWERTXHT40_5);
	else
		power = FUNC1(ah, AR_PHY_POWERTX_RATE6,
			AR_PHY_POWERTX_RATE6_POWERTXHT20_5);

	power += scale;
	delta = FUNC2((int) ah->paprd_target_power - (int) power);
	if (delta > scale)
		return -1;

	switch (FUNC6(ah->txchainmask)) {
	case 1:
		delta = 6;
		break;
	case 2:
		delta = 4;
		break;
	case 3:
		delta = 2;
		break;
	default:
		delta = 0;
		FUNC5(common, CALIBRATE, "Invalid tx-chainmask: %u\n",
			ah->txchainmask);
	}

	power += delta;
	return power;
}