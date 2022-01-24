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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int ia_rows; } ;
struct ath_hw {TYPE_1__ iniModes_9271_ANI_reg; } ;
struct ath9k_channel {int chanmode; } ;

/* Variables and functions */
 scalar_t__ AR_PHY_CCK_DETECT ; 
 scalar_t__ AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK ; 
#define  CHANNEL_A 136 
#define  CHANNEL_A_HT20 135 
#define  CHANNEL_A_HT40MINUS 134 
#define  CHANNEL_A_HT40PLUS 133 
#define  CHANNEL_B 132 
#define  CHANNEL_G 131 
#define  CHANNEL_G_HT20 130 
#define  CHANNEL_G_HT40MINUS 129 
#define  CHANNEL_G_HT40PLUS 128 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,scalar_t__,scalar_t__) ; 

void FUNC5(struct ath_hw *ah, struct ath9k_channel *chan)
{
	u32 modesIndex;
	int i;

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
		return;
	}

	FUNC0(ah);

	for (i = 0; i < ah->iniModes_9271_ANI_reg.ia_rows; i++) {
		u32 reg = FUNC1(&ah->iniModes_9271_ANI_reg, i, 0);
		u32 val = FUNC1(&ah->iniModes_9271_ANI_reg, i, modesIndex);
		u32 val_orig;

		if (reg == AR_PHY_CCK_DETECT) {
			val_orig = FUNC3(ah, reg);
			val &= AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK;
			val_orig &= ~AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK;

			FUNC4(ah, reg, val|val_orig);
		} else
			FUNC4(ah, reg, val);
	}

	FUNC2(ah);
}