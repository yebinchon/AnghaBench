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
struct ath_hw {TYPE_3__* curchan; TYPE_2__* caldata; scalar_t__ chip_fullsleep; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct ath9k_channel {scalar_t__ channel; int channelFlags; } ;
struct TYPE_6__ {scalar_t__ channel; int channelFlags; } ;
struct TYPE_5__ {int /*<<< orphan*/  rtt_done; int /*<<< orphan*/  done_txclcal_once; int /*<<< orphan*/  done_txiqcal_once; } ;
struct TYPE_4__ {scalar_t__ ath_bus_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ ATH_PCI ; 
 int CHANNEL_ALL ; 
 int CHANNEL_HALF ; 
 int CHANNEL_QUARTER ; 
 int EINVAL ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 
 int FUNC5 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 struct ath_common* FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,TYPE_3__*) ; 
 scalar_t__ FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct ath_hw *ah, struct ath9k_channel *chan)
{
	struct ath_common *common = FUNC7(ah);
	int ret;

	if (FUNC1(ah) && common->bus_ops->ath_bus_type == ATH_PCI)
		goto fail;

	if (ah->chip_fullsleep)
		goto fail;

	if (!ah->curchan)
		goto fail;

	if (chan->channel == ah->curchan->channel)
		goto fail;

	if ((ah->curchan->channelFlags | chan->channelFlags) &
	    (CHANNEL_HALF | CHANNEL_QUARTER))
		goto fail;

	if ((chan->channelFlags & CHANNEL_ALL) !=
	    (ah->curchan->channelFlags & CHANNEL_ALL))
		goto fail;

	if (!FUNC6(ah))
		goto fail;

	/*
	 * For AR9462, make sure that calibration data for
	 * re-using are present.
	 */
	if (FUNC2(ah) && (ah->caldata &&
				 (!ah->caldata->done_txiqcal_once ||
				  !ah->caldata->done_txclcal_once ||
				  !ah->caldata->rtt_done)))
		goto fail;

	FUNC11(common, RESET, "FastChannelChange for %d -> %d\n",
		ah->curchan->channel, chan->channel);

	ret = FUNC5(ah, chan);
	if (!ret)
		goto fail;

	if (FUNC9(ah))
		FUNC4(ah, false);

	FUNC8(ah, ah->curchan);
	FUNC10(ah, true);

	if (FUNC0(ah))
		FUNC3(ah, chan);

	return 0;
fail:
	return -EINVAL;
}