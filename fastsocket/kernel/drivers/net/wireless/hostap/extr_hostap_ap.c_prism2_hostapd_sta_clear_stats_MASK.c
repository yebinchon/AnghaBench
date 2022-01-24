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
struct sta_info {scalar_t__* rx_count; scalar_t__* tx_count; scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct prism2_hostapd_param {int /*<<< orphan*/  sta_addr; } ;
struct ap_data {int /*<<< orphan*/  sta_table_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 int WLAN_RATE_COUNT ; 
 struct sta_info* FUNC0 (struct ap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ap_data *ap,
					  struct prism2_hostapd_param *param)
{
	struct sta_info *sta;
	int rate;

	FUNC1(&ap->sta_table_lock);
	sta = FUNC0(ap, param->sta_addr);
	if (sta) {
		sta->rx_packets = sta->tx_packets = 0;
		sta->rx_bytes = sta->tx_bytes = 0;
		for (rate = 0; rate < WLAN_RATE_COUNT; rate++) {
			sta->tx_count[rate] = 0;
			sta->rx_count[rate] = 0;
		}
	}
	FUNC2(&ap->sta_table_lock);

	if (!sta)
		return -ENOENT;

	return 0;
}