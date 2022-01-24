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
typedef  scalar_t__ u8 ;
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_2__* stations; int /*<<< orphan*/  mutex; } ;
struct il_addsta_cmd {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  modify_mask; } ;
struct TYPE_6__ {int /*<<< orphan*/  mode; scalar_t__ remove_immediate_ba_tid; TYPE_1__ sta; scalar_t__ station_flags_msk; } ;
struct TYPE_5__ {TYPE_3__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int IL_INVALID_STATION ; 
 int /*<<< orphan*/  STA_CONTROL_MODIFY_MSK ; 
 int /*<<< orphan*/  STA_MODIFY_DELBA_TID_MSK ; 
 int FUNC1 (struct il_priv*,struct il_addsta_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct il_addsta_cmd*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC7(struct il_priv *il, struct ieee80211_sta *sta, int tid)
{
	unsigned long flags;
	int sta_id;
	struct il_addsta_cmd sta_cmd;

	FUNC3(&il->mutex);

	sta_id = FUNC2(sta);
	if (sta_id == IL_INVALID_STATION) {
		FUNC0("Invalid station for AGG tid %d\n", tid);
		return -ENXIO;
	}

	FUNC5(&il->sta_lock, flags);
	il->stations[sta_id].sta.station_flags_msk = 0;
	il->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_DELBA_TID_MSK;
	il->stations[sta_id].sta.remove_immediate_ba_tid = (u8) tid;
	il->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;
	FUNC4(&sta_cmd, &il->stations[sta_id].sta,
	       sizeof(struct il_addsta_cmd));
	FUNC6(&il->sta_lock, flags);

	return FUNC1(il, &sta_cmd, CMD_SYNC);
}