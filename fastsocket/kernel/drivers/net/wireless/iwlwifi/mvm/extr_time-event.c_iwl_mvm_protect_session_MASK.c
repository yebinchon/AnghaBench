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
typedef  int u32 ;
struct iwl_time_event_cmd {void* notify; void* repeat; void* duration; void* interval_reciprocal; void* interval; void* max_delay; void* max_frags; void* is_present; int /*<<< orphan*/  dep_policy; void* apply_time; void* id; void* id_and_color; void* action; } ;
struct iwl_mvm_time_event_data {scalar_t__ end_jiffies; int /*<<< orphan*/  uid; scalar_t__ running; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_SYSTEM_TIME_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FW_CTXT_ACTION_ADD ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,...) ; 
 int TE_BSS_STA_AGGRESSIVE_ASSOC ; 
 int TE_FRAG_NONE ; 
 int /*<<< orphan*/  TE_INDEPENDENT ; 
 int TE_NOTIF_HOST_EVENT_END ; 
 int TE_NOTIF_HOST_EVENT_START ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mvm_time_event_data*,struct iwl_time_event_cmd*) ; 
 struct iwl_mvm_vif* FUNC7 (struct ieee80211_vif*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

void FUNC12(struct iwl_mvm *mvm,
			     struct ieee80211_vif *vif,
			     u32 duration, u32 min_duration)
{
	struct iwl_mvm_vif *mvmvif = FUNC7(vif);
	struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;
	struct iwl_time_event_cmd time_cmd = {};

	FUNC10(&mvm->mutex);

	if (te_data->running &&
	    FUNC11(te_data->end_jiffies,
		       jiffies + FUNC2(min_duration))) {
		FUNC1(mvm, "We have enough time in the current TE: %u\n",
			     FUNC9(te_data->end_jiffies - jiffies));
		return;
	}

	if (te_data->running) {
		FUNC1(mvm, "extend 0x%x: only %u ms left\n",
			     te_data->uid,
			     FUNC9(te_data->end_jiffies - jiffies));
		/*
		 * we don't have enough time
		 * cancel the current TE and issue a new one
		 * Of course it would be better to remove the old one only
		 * when the new one is added, but we don't care if we are off
		 * channel for a bit. All we need to do, is not to return
		 * before we actually begin to be on the channel.
		 */
		FUNC5(mvm, vif);
	}

	time_cmd.action = FUNC3(FW_CTXT_ACTION_ADD);
	time_cmd.id_and_color =
		FUNC3(FUNC0(mvmvif->id, mvmvif->color));
	time_cmd.id = FUNC3(TE_BSS_STA_AGGRESSIVE_ASSOC);

	time_cmd.apply_time =
		FUNC3(FUNC8(mvm->trans, DEVICE_SYSTEM_TIME_REG));

	time_cmd.dep_policy = TE_INDEPENDENT;
	time_cmd.is_present = FUNC3(1);
	time_cmd.max_frags = FUNC3(TE_FRAG_NONE);
	time_cmd.max_delay = FUNC3(500);
	/* TODO: why do we need to interval = bi if it is not periodic? */
	time_cmd.interval = FUNC3(1);
	time_cmd.interval_reciprocal = FUNC3(FUNC4(1));
	time_cmd.duration = FUNC3(duration);
	time_cmd.repeat = FUNC3(1);
	time_cmd.notify = FUNC3(TE_NOTIF_HOST_EVENT_START |
				      TE_NOTIF_HOST_EVENT_END);

	FUNC6(mvm, vif, te_data, &time_cmd);
}