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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  time_cmd ;
struct iwl_time_event_cmd {void* id; void* id_and_color; void* action; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm_time_event_data {scalar_t__ uid; scalar_t__ id; } ;
struct iwl_mvm {int /*<<< orphan*/  time_event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FW_CTXT_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,scalar_t__) ; 
 scalar_t__ TE_MAX ; 
 int /*<<< orphan*/  TIME_EVENT_CMD ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (scalar_t__) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_time_event_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct iwl_mvm *mvm,
			       struct iwl_mvm_vif *mvmvif,
			       struct iwl_mvm_time_event_data *te_data)
{
	struct iwl_time_event_cmd time_cmd = {};
	u32 id, uid;
	int ret;

	/*
	 * It is possible that by the time we got to this point the time
	 * event was already removed.
	 */
	FUNC7(&mvm->time_event_lock);

	/* Save time event uid before clearing its data */
	uid = te_data->uid;
	id = te_data->id;

	/*
	 * The clear_data function handles time events that were already removed
	 */
	FUNC5(mvm, te_data);
	FUNC8(&mvm->time_event_lock);

	/*
	 * It is possible that by the time we try to remove it, the time event
	 * has already ended and removed. In such a case there is no need to
	 * send a removal command.
	 */
	if (id == TE_MAX) {
		FUNC1(mvm, "TE 0x%x has already ended\n", uid);
		return;
	}

	/* When we remove a TE, the UID is to be set in the id field */
	time_cmd.id = FUNC3(uid);
	time_cmd.action = FUNC3(FW_CTXT_ACTION_REMOVE);
	time_cmd.id_and_color =
		FUNC3(FUNC0(mvmvif->id, mvmvif->color));

	FUNC1(mvm, "Removing TE 0x%x\n", FUNC6(time_cmd.id));
	ret = FUNC4(mvm, TIME_EVENT_CMD, CMD_SYNC,
				   sizeof(time_cmd), &time_cmd);
	if (FUNC2(ret))
		return;
}