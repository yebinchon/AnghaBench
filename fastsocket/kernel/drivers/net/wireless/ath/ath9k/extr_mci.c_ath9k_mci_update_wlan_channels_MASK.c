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
typedef  int u32 ;
typedef  int u16 ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath9k_hw_mci {int* wlan_channels; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {struct ath9k_channel* curchan; TYPE_1__ btcoex_hw; } ;
struct ath9k_channel {int channel; scalar_t__ chanmode; } ;
typedef  int s16 ;

/* Variables and functions */
 int ATH_MCI_NUM_BT_CHANNELS ; 
 scalar_t__ CHANNEL_G_HT40MINUS ; 
 scalar_t__ CHANNEL_G_HT40PLUS ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  MCI ; 
 int /*<<< orphan*/  FUNC1 (int**,int) ; 
 int /*<<< orphan*/  MCI_STATE_SEND_VERSION_QUERY ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 

void FUNC6(struct ath_softc *sc, bool allow_all)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
	struct ath9k_channel *chan = ah->curchan;
	u32 channelmap[] = {0x00000000, 0xffff0000, 0xffffffff, 0x7fffffff};
	int i;
	s16 chan_start, chan_end;
	u16 wlan_chan;

	if (!chan || !FUNC0(chan))
		return;

	if (allow_all)
		goto send_wlan_chan;

	wlan_chan = chan->channel - 2402;

	chan_start = wlan_chan - 10;
	chan_end = wlan_chan + 10;

	if (chan->chanmode == CHANNEL_G_HT40PLUS)
		chan_end += 20;
	else if (chan->chanmode == CHANNEL_G_HT40MINUS)
		chan_start -= 20;

	/* adjust side band */
	chan_start -= 7;
	chan_end += 7;

	if (chan_start <= 0)
		chan_start = 0;
	if (chan_end >= ATH_MCI_NUM_BT_CHANNELS)
		chan_end = ATH_MCI_NUM_BT_CHANNELS - 1;

	FUNC5(FUNC4(ah), MCI,
		"WLAN current channel %d mask BT channel %d - %d\n",
		wlan_chan, chan_start, chan_end);

	for (i = chan_start; i < chan_end; i++)
		FUNC1(&channelmap, i);

send_wlan_chan:
	/* update and send wlan channels info to BT */
	for (i = 0; i < 4; i++)
		mci->wlan_channels[i] = channelmap[i];
	FUNC2(ah);
	FUNC3(ah, MCI_STATE_SEND_VERSION_QUERY);
}