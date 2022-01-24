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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_3__ {int flags; } ;
struct iwl_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;
struct iwl_nvm_access_resp {int /*<<< orphan*/ * data; int /*<<< orphan*/  offset; int /*<<< orphan*/  length; int /*<<< orphan*/  status; } ;
struct iwl_nvm_access_cmd {int dummy; } ;
struct iwl_mvm {TYPE_2__* cfg; } ;
struct iwl_host_cmd {int flags; int* len; struct iwl_rx_packet* resp_pkt; int /*<<< orphan*/  data; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CMD_SYNC ; 
 int CMD_WANT_SKB ; 
 int EINVAL ; 
 int EIO ; 
 int IWL_CMD_FAILED_MSK ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int,...) ; 
 int /*<<< orphan*/  NVM_ACCESS_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_host_cmd*) ; 
 int FUNC2 (struct iwl_mvm*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_nvm_access_cmd*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct iwl_mvm *mvm, u16 section,
			      u16 offset, u16 length, u8 *data)
{
	struct iwl_nvm_access_cmd nvm_access_cmd = {};
	struct iwl_nvm_access_resp *nvm_resp;
	struct iwl_rx_packet *pkt;
	struct iwl_host_cmd cmd = {
		.id = NVM_ACCESS_CMD,
		.flags = CMD_SYNC | CMD_WANT_SKB,
		.data = &nvm_access_cmd, 
	};
	int ret, bytes_read, offset_read;
	u8 *resp_data;

	FUNC3(&nvm_access_cmd, offset, length, section);
	cmd.len[0] = sizeof(struct iwl_nvm_access_cmd);

	ret = FUNC2(mvm, &cmd);
	if (ret)
		return ret;

	pkt = cmd.resp_pkt;
	if (pkt->hdr.flags & IWL_CMD_FAILED_MSK) {
		FUNC0(mvm, "Bad return from NVM_ACCES_COMMAND (0x%08X)\n",
			pkt->hdr.flags);
		ret = -EIO;
		goto exit;
	}

	/* Extract NVM response */
	nvm_resp = (void *)pkt->data;
	ret = FUNC4(nvm_resp->status);
	bytes_read = FUNC4(nvm_resp->length);
	offset_read = FUNC4(nvm_resp->offset);
	resp_data = nvm_resp->data;
	if (ret) {
		FUNC0(mvm,
			"NVM access command failed with status %d (device: %s)\n",
			ret, mvm->cfg->name);
		ret = -EINVAL;
		goto exit;
	}

	if (offset_read != offset) {
		FUNC0(mvm, "NVM ACCESS response with invalid offset %d\n",
			offset_read);
		ret = -EINVAL;
		goto exit;
	}

	/* Write data to NVM */
	FUNC5(data + offset, resp_data, bytes_read);
	ret = bytes_read;

exit:
	FUNC1(&cmd);
	return ret;
}