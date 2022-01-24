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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int flags; } ;
struct iwl_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;
struct iwl_rem_sta_resp {int status; } ;
struct iwl_rem_sta_cmd {int num_sta; int /*<<< orphan*/  addr; } ;
struct iwl_priv {int /*<<< orphan*/  sta_lock; } ;
struct iwl_host_cmd {struct iwl_rx_packet* resp_pkt; int /*<<< orphan*/  flags; int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  rm_sta_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  CMD_WANT_SKB ; 
 int EIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IWL_CMD_FAILED_MSK ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,...) ; 
#define  REM_STA_SUCCESS_MSK 128 
 int /*<<< orphan*/  REPLY_REMOVE_STA ; 
 int FUNC2 (struct iwl_priv*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_rem_sta_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iwl_priv *priv,
				   const u8 *addr, int sta_id,
				   bool temporary)
{
	struct iwl_rx_packet *pkt;
	int ret;
	struct iwl_rem_sta_cmd rm_sta_cmd;

	struct iwl_host_cmd cmd = {
		.id = REPLY_REMOVE_STA,
		.len = sizeof(struct iwl_rem_sta_cmd), 
		.flags = CMD_SYNC,
		.data = &rm_sta_cmd, 
	};

	FUNC6(&rm_sta_cmd, 0, sizeof(rm_sta_cmd));
	rm_sta_cmd.num_sta = 1;
	FUNC5(&rm_sta_cmd.addr, addr, ETH_ALEN);

	cmd.flags |= CMD_WANT_SKB;

	ret = FUNC2(priv, &cmd);

	if (ret)
		return ret;

	pkt = cmd.resp_pkt;
	if (pkt->hdr.flags & IWL_CMD_FAILED_MSK) {
		FUNC1(priv, "Bad return from REPLY_REMOVE_STA (0x%08X)\n",
			  pkt->hdr.flags);
		ret = -EIO;
	}

	if (!ret) {
		struct iwl_rem_sta_resp *rem_sta_resp = (void *)pkt->data;
		switch (rem_sta_resp->status) {
		case REM_STA_SUCCESS_MSK:
			if (!temporary) {
				FUNC7(&priv->sta_lock);
				FUNC4(priv, sta_id);
				FUNC8(&priv->sta_lock);
			}
			FUNC0(priv, "REPLY_REMOVE_STA PASSED\n");
			break;
		default:
			ret = -EIO;
			FUNC1(priv, "REPLY_REMOVE_STA failed\n");
			break;
		}
	}
	FUNC3(&cmd);

	return ret;
}