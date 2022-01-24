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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int hw_caps; } ;
struct ath_hw {int /*<<< orphan*/  ah_flags; TYPE_3__* eep_ops; TYPE_2__* curchan; TYPE_1__ caps; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int channelFlags; scalar_t__ chanmode; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_board_values ) (struct ath_hw*,struct ath9k_channel*) ;} ;
struct TYPE_5__ {int channelFlags; scalar_t__ chanmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FASTCC ; 
 scalar_t__ AR_NUM_QCU ; 
 int ATH9K_HW_CAP_EDMA ; 
 int CHANNEL_2GHZ ; 
 int CHANNEL_5GHZ ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  QUEUE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,struct ath9k_channel*,int) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*,struct ath9k_channel*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 scalar_t__ FUNC9 (struct ath_hw*,scalar_t__) ; 
 int FUNC10 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static bool FUNC21(struct ath_hw *ah,
				    struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC3(ah);
	u32 qnum;
	int r;
	bool edma = !!(ah->caps.hw_caps & ATH9K_HW_CAP_EDMA);
	bool band_switch, mode_diff;
	u8 ini_reloaded;

	band_switch = (chan->channelFlags & (CHANNEL_2GHZ | CHANNEL_5GHZ)) !=
		      (ah->curchan->channelFlags & (CHANNEL_2GHZ |
						    CHANNEL_5GHZ));
	mode_diff = (chan->chanmode != ah->curchan->chanmode);

	for (qnum = 0; qnum < AR_NUM_QCU; qnum++) {
		if (FUNC9(ah, qnum)) {
			FUNC17(common, QUEUE,
				"Transmit frames pending on queue %d\n", qnum);
			return false;
		}
	}

	if (!FUNC12(ah)) {
		FUNC18(common, "Could not kill baseband RX\n");
		return false;
	}

	if (edma && (band_switch || mode_diff)) {
		FUNC8(ah);
		FUNC20(5);

		FUNC7(ah, NULL);

		if (FUNC4(ah, chan, &ini_reloaded)) {
			FUNC18(common, "Failed to do fast channel change\n");
			return false;
		}
	}

	FUNC13(ah, chan);

	r = FUNC10(ah, chan);
	if (r) {
		FUNC18(common, "Failed to set channel\n");
		return false;
	}
	FUNC14(ah);
	FUNC2(ah, chan, false);
	FUNC11(ah);

	if (FUNC1(chan) || FUNC0(chan))
		FUNC15(ah, chan);

	FUNC16(ah, chan);

	if (edma && (band_switch || mode_diff)) {
		ah->ah_flags |= AH_FASTCC;
		if (band_switch || ini_reloaded)
			ah->eep_ops->set_board_values(ah, chan);

		FUNC5(ah, chan);

		if (band_switch || ini_reloaded)
			FUNC6(ah, chan);
		ah->ah_flags &= ~AH_FASTCC;
	}

	return true;
}