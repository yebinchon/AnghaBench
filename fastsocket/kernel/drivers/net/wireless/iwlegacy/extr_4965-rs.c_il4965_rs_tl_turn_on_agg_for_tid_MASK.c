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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct il_priv {int dummy; } ;
struct il_lq_sta {int dummy; } ;
struct ieee80211_sta {scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int EAGAIN ; 
 scalar_t__ IL_AGG_LOAD_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (struct ieee80211_sta*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sta*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct il_lq_sta*,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct il_priv *il, struct il_lq_sta *lq_data,
				 u8 tid, struct ieee80211_sta *sta)
{
	int ret = -EAGAIN;
	u32 load;

	load = FUNC4(lq_data, tid);

	if (load > IL_AGG_LOAD_THRESHOLD) {
		FUNC0("Starting Tx agg: STA: %pM tid: %d\n", sta->addr, tid);
		ret = FUNC2(sta, tid, 5000);
		if (ret == -EAGAIN) {
			/*
			 * driver and mac80211 is out of sync
			 * this might be cause by reloading firmware
			 * stop the tx ba session here
			 */
			FUNC1("Fail start Tx agg on tid: %d\n", tid);
			FUNC3(sta, tid);
		}
	} else
		FUNC0("Aggregation not enabled for tid %d because load = %u\n",
		     tid, load);

	return ret;
}