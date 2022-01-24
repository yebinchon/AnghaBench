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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm_int_sta {int /*<<< orphan*/  tfd_queue_msk; int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_add_sta_cmd {int /*<<< orphan*/  addr; void* tfd_queue_msk; void* mac_id_n_color; int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_STA ; 
#define  ADD_STA_SUCCESS 128 
 int EIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int,struct iwl_mvm_add_sta_cmd*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm_add_sta_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct iwl_mvm *mvm,
				      struct iwl_mvm_int_sta *sta,
				      const u8 *addr,
				      u16 mac_id, u16 color)
{
	struct iwl_mvm_add_sta_cmd cmd;
	int ret;
	u32 status;

	FUNC5(&mvm->mutex);

	FUNC7(&cmd, 0, sizeof(struct iwl_mvm_add_sta_cmd));
	cmd.sta_id = sta->sta_id;
	cmd.mac_id_n_color = FUNC3(FUNC0(mac_id,
							     color));

	cmd.tfd_queue_msk = FUNC3(sta->tfd_queue_msk);

	if (addr)
		FUNC6(cmd.addr, addr, ETH_ALEN);

	ret = FUNC4(mvm, ADD_STA, sizeof(cmd),
					  &cmd, &status);
	if (ret)
		return ret;

	switch (status) {
	case ADD_STA_SUCCESS:
		FUNC1(mvm, "Internal station added.\n");
		return 0;
	default:
		ret = -EIO;
		FUNC2(mvm, "Add internal station failed, status=0x%x\n",
			status);
		break;
	}
	return ret;
}