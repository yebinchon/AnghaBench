#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_time_event_notif {int /*<<< orphan*/  action; int /*<<< orphan*/  status; int /*<<< orphan*/  unique_id; } ;
struct iwl_mvm_time_event_data {int end_jiffies; int running; TYPE_2__* vif; int /*<<< orphan*/  duration; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; int /*<<< orphan*/  status; int /*<<< orphan*/  time_event_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  assoc; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ bss_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_ROC_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*) ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int TE_NOTIF_HOST_EVENT_END ; 
 int TE_NOTIF_HOST_EVENT_START ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ; 
 int jiffies ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct iwl_mvm *mvm,
				    struct iwl_mvm_time_event_data *te_data,
				    struct iwl_time_event_notif *notif)
{
	FUNC11(&mvm->time_event_lock);

	FUNC0(mvm, "Handle time event notif - UID = 0x%x action %d\n",
		     FUNC10(notif->unique_id),
		     FUNC10(notif->action));

	/*
	 * The FW sends the start/end time event notifications even for events
	 * that it fails to schedule. This is indicated in the status field of
	 * the notification. This happens in cases that the scheduler cannot
	 * find a schedule that can handle the event (for example requesting a
	 * P2P Device discoveribility, while there are other higher priority
	 * events in the system).
	 */
	FUNC4(!FUNC10(notif->status),
		  "Failed to schedule time event\n");

	if (FUNC10(notif->action) & TE_NOTIF_HOST_EVENT_END) {
		FUNC0(mvm,
			     "TE ended - current time %lu, estimated end %lu\n",
			     jiffies, te_data->end_jiffies);

		if (te_data->vif->type == NL80211_IFTYPE_P2P_DEVICE) {
			FUNC7(mvm->hw);
			FUNC8(mvm);
		}

		/*
		 * By now, we should have finished association
		 * and know the dtim period.
		 */
		if (te_data->vif->type == NL80211_IFTYPE_STATION &&
		    (!te_data->vif->bss_conf.assoc ||
		     !te_data->vif->bss_conf.dtim_period)) {
			FUNC1(mvm,
				"No assocation and the time event is over already...\n");
			FUNC5(te_data->vif);
		}

		FUNC9(mvm, te_data);
	} else if (FUNC10(notif->action) & TE_NOTIF_HOST_EVENT_START) {
		te_data->running = true;
		te_data->end_jiffies = jiffies +
			FUNC3(te_data->duration);

		if (te_data->vif->type == NL80211_IFTYPE_P2P_DEVICE) {
			FUNC12(IWL_MVM_STATUS_ROC_RUNNING, &mvm->status);
			FUNC6(mvm->hw);
		}
	} else {
		FUNC2(mvm, "Got TE with unknown action\n");
	}
}