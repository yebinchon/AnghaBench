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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct ieee80211_hw *hw)
{
	FUNC0(DEBUG_MAC80211, "mac80211 start");

	/*
	 * We have to delay the booting of the hardware because
	 * we need to know the local MAC address before downloading and
	 * initializing the firmware. The MAC address cannot be changed
	 * after boot, and without the proper MAC address, the firmware
	 * will not function properly.
	 *
	 * The MAC address is first known when the corresponding interface
	 * is added. That is where we will initialize the hardware.
	 */

	return 0;
}