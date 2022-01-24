#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct il_rxon_time_cmd {int dummy; } ;
struct TYPE_9__ {int dtim_period; void* atim_win; int /*<<< orphan*/  beacon_init_val; void* beacon_interval; void* listen_interval; int /*<<< orphan*/  timestamp; } ;
struct TYPE_7__ {int max_beacon_itrvl; } ;
struct il_priv {TYPE_4__ timing; int /*<<< orphan*/  timestamp; TYPE_2__ hw_params; int /*<<< orphan*/  mutex; TYPE_1__* hw; struct ieee80211_vif* vif; } ;
struct TYPE_8__ {int beacon_int; scalar_t__ dtim_period; } ;
struct ieee80211_vif {TYPE_3__ bss_conf; } ;
struct ieee80211_conf {int listen_interval; } ;
typedef  int s32 ;
struct TYPE_6__ {struct ieee80211_conf conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_RXON_TIMING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TIME_UNIT ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (struct il_priv*,int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

int
FUNC11(struct il_priv *il)
{
	u64 tsf;
	s32 interval_tm, rem;
	struct ieee80211_conf *conf = NULL;
	u16 beacon_int;
	struct ieee80211_vif *vif = il->vif;

	conf = &il->hw->conf;

	FUNC9(&il->mutex);

	FUNC10(&il->timing, 0, sizeof(struct il_rxon_time_cmd));

	il->timing.timestamp = FUNC3(il->timestamp);
	il->timing.listen_interval = FUNC1(conf->listen_interval);

	beacon_int = vif ? vif->bss_conf.beacon_int : 0;

	/*
	 * TODO: For IBSS we need to get atim_win from mac80211,
	 *       for now just always use 0
	 */
	il->timing.atim_win = 0;

	beacon_int =
	    FUNC5(beacon_int,
				      il->hw_params.max_beacon_itrvl *
				      TIME_UNIT);
	il->timing.beacon_interval = FUNC1(beacon_int);

	tsf = il->timestamp;	/* tsf is modifed by do_div: copy it */
	interval_tm = beacon_int * TIME_UNIT;
	rem = FUNC4(tsf, interval_tm);
	il->timing.beacon_init_val = FUNC2(interval_tm - rem);

	il->timing.dtim_period = vif ? (vif->bss_conf.dtim_period ? : 1) : 1;

	FUNC0("beacon interval %d beacon timer %d beacon tim %d\n",
		FUNC7(il->timing.beacon_interval),
		FUNC8(il->timing.beacon_init_val),
		FUNC7(il->timing.atim_win));

	return FUNC6(il, C_RXON_TIMING, sizeof(il->timing),
			       &il->timing);
}