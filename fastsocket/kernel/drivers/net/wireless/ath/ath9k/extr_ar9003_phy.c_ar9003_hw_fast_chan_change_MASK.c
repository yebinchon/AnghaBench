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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct ath_hw {scalar_t__ modes_index; int /*<<< orphan*/  iniAdditional; int /*<<< orphan*/  iniModesFastClock; int /*<<< orphan*/  iniModesTxGain; int /*<<< orphan*/  ini_radio_post_sys2ant; int /*<<< orphan*/ * iniRadio; int /*<<< orphan*/ * iniBB; int /*<<< orphan*/ * iniMac; int /*<<< orphan*/ * iniSOC; } ;
struct ath9k_channel {int chanmode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 size_t ATH_INI_POST ; 
#define  CHANNEL_A 136 
#define  CHANNEL_A_HT20 135 
#define  CHANNEL_A_HT40MINUS 134 
#define  CHANNEL_A_HT40PLUS 133 
#define  CHANNEL_B 132 
#define  CHANNEL_G 131 
#define  CHANNEL_G_HT20 130 
#define  CHANNEL_G_HT40MINUS 129 
#define  CHANNEL_G_HT40PLUS 128 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,struct ath9k_channel*) ; 

__attribute__((used)) static int FUNC6(struct ath_hw *ah,
				      struct ath9k_channel *chan,
				      u8 *ini_reloaded)
{
	unsigned int regWrites = 0;
	u32 modesIndex;

	switch (chan->chanmode) {
	case CHANNEL_A:
	case CHANNEL_A_HT20:
		modesIndex = 1;
		break;
	case CHANNEL_A_HT40PLUS:
	case CHANNEL_A_HT40MINUS:
		modesIndex = 2;
		break;
	case CHANNEL_G:
	case CHANNEL_G_HT20:
	case CHANNEL_B:
		modesIndex = 4;
		break;
	case CHANNEL_G_HT40PLUS:
	case CHANNEL_G_HT40MINUS:
		modesIndex = 3;
		break;

	default:
		return -EINVAL;
	}

	if (modesIndex == ah->modes_index) {
		*ini_reloaded = false;
		goto set_rfmode;
	}

	FUNC4(ah, &ah->iniSOC[ATH_INI_POST], modesIndex);
	FUNC4(ah, &ah->iniMac[ATH_INI_POST], modesIndex);
	FUNC4(ah, &ah->iniBB[ATH_INI_POST], modesIndex);
	FUNC4(ah, &ah->iniRadio[ATH_INI_POST], modesIndex);

	if (FUNC0(ah))
		FUNC4(ah, &ah->ini_radio_post_sys2ant,
				   modesIndex);

	FUNC3(&ah->iniModesTxGain, modesIndex, regWrites);

	/*
	 * For 5GHz channels requiring Fast Clock, apply
	 * different modal values.
	 */
	if (FUNC2(ah, chan))
		FUNC3(&ah->iniModesFastClock, modesIndex, regWrites);

	if (FUNC1(ah))
		FUNC3(&ah->iniModesFastClock, 1, regWrites);

	FUNC3(&ah->iniAdditional, 1, regWrites);

	ah->modes_index = modesIndex;
	*ini_reloaded = true;

set_rfmode:
	FUNC5(ah, chan);
	return 0;
}