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
struct ieee80211_low_level_stats {int /*<<< orphan*/  dot11FCSErrorCount; int /*<<< orphan*/  dot11ACKFailureCount; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct ar9170 {int /*<<< orphan*/  tx_fcs_errors; int /*<<< orphan*/  tx_ack_failures; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_low_level_stats*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct ieee80211_hw *hw,
				 struct ieee80211_low_level_stats *stats)
{
	struct ar9170 *ar = hw->priv;

	FUNC0(stats, 0, sizeof(*stats));
	stats->dot11ACKFailureCount = ar->tx_ack_failures;
	stats->dot11FCSErrorCount = ar->tx_fcs_errors;
	return 0;
}