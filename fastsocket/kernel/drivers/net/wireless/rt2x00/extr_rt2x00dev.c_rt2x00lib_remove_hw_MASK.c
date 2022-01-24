#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  channels_info; } ;
struct rt2x00_dev {TYPE_2__ spec; TYPE_4__* hw; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_1__* wiphy; } ;
struct TYPE_7__ {int /*<<< orphan*/  bitrates; int /*<<< orphan*/  channels; } ;
struct TYPE_5__ {TYPE_3__** bands; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_REGISTERED_HW ; 
 size_t IEEE80211_BAND_2GHZ ; 
 size_t IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev)
{
	if (FUNC3(DEVICE_STATE_REGISTERED_HW, &rt2x00dev->flags))
		FUNC0(rt2x00dev->hw);

	if (FUNC2(rt2x00dev->hw->wiphy->bands[IEEE80211_BAND_2GHZ])) {
		FUNC1(rt2x00dev->hw->wiphy->bands[IEEE80211_BAND_2GHZ]->channels);
		FUNC1(rt2x00dev->hw->wiphy->bands[IEEE80211_BAND_2GHZ]->bitrates);
		rt2x00dev->hw->wiphy->bands[IEEE80211_BAND_2GHZ] = NULL;
		rt2x00dev->hw->wiphy->bands[IEEE80211_BAND_5GHZ] = NULL;
	}

	FUNC1(rt2x00dev->spec.channels_info);
}