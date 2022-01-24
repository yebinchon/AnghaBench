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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_channel {int dummy; } ;
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_RF_BUFFER ; 
 int /*<<< orphan*/  AR5K_RF_BUFFER_CONTROL_0 ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int
FUNC3(struct ath5k_hw *ah,
		struct ieee80211_channel *channel)
{
	u32 data;

	/*
	 * Set the channel and wait
	 */
	data = FUNC1(channel);
	FUNC0(ah, data, AR5K_RF_BUFFER);
	FUNC0(ah, 0, AR5K_RF_BUFFER_CONTROL_0);
	FUNC2(1000, 1500);

	return 0;
}