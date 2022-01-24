#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int flags; } ;
struct iwl_rx_packet {scalar_t__ data; int /*<<< orphan*/  len_n_flags; TYPE_1__ hdr; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; } ;
struct iwl_host_cmd {int flags; struct iwl_rx_packet* resp_pkt; } ;
struct iwl_cmd_response {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int CMD_SYNC ; 
 int CMD_WANT_SKB ; 
 int EINVAL ; 
 int EIO ; 
 int ERFKILL ; 
 int FH_RSCSR_FRAME_SIZE_MSK ; 
 int IWL_CMD_FAILED_MSK ; 
 scalar_t__ FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_host_cmd*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iwl_host_cmd*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iwl_mvm *mvm, struct iwl_host_cmd *cmd,
			    u32 *status)
{
	struct iwl_rx_packet *pkt;
	struct iwl_cmd_response *resp;
	int ret, resp_len;

	FUNC5(&mvm->mutex);

	/*
	 * Only synchronous commands can wait for status,
	 * we use WANT_SKB so the caller can't.
	 */
	if (FUNC0(cmd->flags & (CMD_ASYNC | CMD_WANT_SKB),
		      "cmd flags %x", cmd->flags))
		return -EINVAL;

	cmd->flags |= CMD_SYNC | CMD_WANT_SKB;

	ret = FUNC3(mvm->trans, cmd);
	if (ret == -ERFKILL) {
		/*
		 * The command failed because of RFKILL, don't update
		 * the status, leave it as success and return 0.
		 */
		return 0;
	} else if (ret) {
		return ret;
	}

	pkt = cmd->resp_pkt;
	/* Can happen if RFKILL is asserted */
	if (!pkt) {
		ret = 0;
		goto out_free_resp;
	}

	if (pkt->hdr.flags & IWL_CMD_FAILED_MSK) {
		ret = -EIO;
		goto out_free_resp;
	}

	resp_len = FUNC4(pkt->len_n_flags) & FH_RSCSR_FRAME_SIZE_MSK;
	if (FUNC1(resp_len != sizeof(pkt->hdr) + sizeof(*resp))) {
		ret = -EIO;
		goto out_free_resp;
	}

	resp = (void *)pkt->data;
	*status = FUNC4(resp->status);
 out_free_resp:
	FUNC2(cmd);
	return ret;
}