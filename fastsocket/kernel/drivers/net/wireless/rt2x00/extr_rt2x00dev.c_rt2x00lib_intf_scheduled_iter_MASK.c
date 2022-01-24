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
struct rt2x00_intf {int /*<<< orphan*/  delayed_flags; } ;
struct rt2x00_dev {int /*<<< orphan*/  flags; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELAYED_UPDATE_BEACON ; 
 int /*<<< orphan*/  DEVICE_STATE_ENABLED_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,struct ieee80211_vif*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rt2x00_intf* FUNC3 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC4(void *data, u8 *mac,
					  struct ieee80211_vif *vif)
{
	struct rt2x00_dev *rt2x00dev = data;
	struct rt2x00_intf *intf = FUNC3(vif);

	/*
	 * It is possible the radio was disabled while the work had been
	 * scheduled. If that happens we should return here immediately,
	 * note that in the spinlock protected area above the delayed_flags
	 * have been cleared correctly.
	 */
	if (!FUNC2(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
		return;

	if (FUNC1(DELAYED_UPDATE_BEACON, &intf->delayed_flags))
		FUNC0(rt2x00dev, vif);
}