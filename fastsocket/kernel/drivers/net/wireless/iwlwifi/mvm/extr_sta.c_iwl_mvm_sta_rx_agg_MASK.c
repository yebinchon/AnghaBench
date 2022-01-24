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
typedef  void* u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm_sta {int /*<<< orphan*/  sta_id; int /*<<< orphan*/  mac_id_n_color; } ;
struct iwl_mvm_add_sta_cmd {int /*<<< orphan*/  modify_mask; void* remove_immediate_ba_tid; int /*<<< orphan*/  add_immediate_ba_ssn; void* add_immediate_ba_tid; int /*<<< orphan*/  add_modify; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  mac_id_n_color; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_STA ; 
#define  ADD_STA_IMMEDIATE_BA_FAILURE 129 
#define  ADD_STA_SUCCESS 128 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  STA_MODE_MODIFY ; 
 int /*<<< orphan*/  STA_MODIFY_ADD_BA_TID ; 
 int /*<<< orphan*/  STA_MODIFY_REMOVE_BA_TID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ,int,struct iwl_mvm_add_sta_cmd*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
		       int tid, u16 ssn, bool start)
{
	struct iwl_mvm_sta *mvm_sta = (void *)sta->drv_priv;
	struct iwl_mvm_add_sta_cmd cmd = {};
	int ret;
	u32 status;

	FUNC6(&mvm->mutex);

	cmd.mac_id_n_color = FUNC4(mvm_sta->mac_id_n_color);
	cmd.sta_id = mvm_sta->sta_id;
	cmd.add_modify = STA_MODE_MODIFY;
	if (start) {
		cmd.add_immediate_ba_tid = (u8) tid;
		cmd.add_immediate_ba_ssn = FUNC3(ssn);
	} else {
		cmd.remove_immediate_ba_tid = (u8) tid;
	}
	cmd.modify_mask = start ? STA_MODIFY_ADD_BA_TID :
				  STA_MODIFY_REMOVE_BA_TID;

	status = ADD_STA_SUCCESS;
	ret = FUNC5(mvm, ADD_STA, sizeof(cmd),
					  &cmd, &status);
	if (ret)
		return ret;

	switch (status) {
	case ADD_STA_SUCCESS:
		FUNC0(mvm, "RX BA Session %sed in fw\n",
			       start ? "start" : "stopp");
		break;
	case ADD_STA_IMMEDIATE_BA_FAILURE:
		FUNC2(mvm, "RX BA Session refused by fw\n");
		ret = -ENOSPC;
		break;
	default:
		ret = -EIO;
		FUNC1(mvm, "RX BA Session failed %sing, status 0x%x\n",
			start ? "start" : "stopp", status);
		break;
	}

	return ret;
}