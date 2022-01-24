#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct ieee80211_channel {unsigned int hw_value; scalar_t__ center_freq; } ;
struct carl9170_phy_freq_params {int dummy; } ;
typedef  enum carl9170_bw { ____Placeholder_carl9170_bw } carl9170_bw ;
struct TYPE_3__ {scalar_t__ freq; struct carl9170_phy_freq_params const* params; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int __CARL9170_NUM_BW ; 
 TYPE_1__* carl9170_phy_freq_params ; 

__attribute__((used)) static const struct carl9170_phy_freq_params *
FUNC4(struct ieee80211_channel *channel,
			   enum carl9170_bw bw)
{
	unsigned int chanidx = 0;
	u16 freq = 2412;

	if (channel) {
		chanidx = channel->hw_value;
		freq = channel->center_freq;
	}

	FUNC1(chanidx >= FUNC0(carl9170_phy_freq_params));

	FUNC2(__CARL9170_NUM_BW != 3);

	FUNC3(carl9170_phy_freq_params[chanidx].freq != freq);

	return &carl9170_phy_freq_params[chanidx].params[bw];
}