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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct iwl_test {int /*<<< orphan*/  trans; } ;
struct iwl_rx_packet {int /*<<< orphan*/  hdr; int /*<<< orphan*/  len_n_flags; } ;
struct iwl_host_cmd {int flags; struct iwl_rx_packet* resp_pkt; int /*<<< orphan*/ * len; int /*<<< orphan*/  id; int /*<<< orphan*/ * dataflags; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int CMD_ON_DEMAND ; 
 int CMD_SYNC ; 
 int CMD_WANT_SKB ; 
 int ENOMEM ; 
 int ENOMSG ; 
 int FH_RSCSR_FRAME_SIZE_MSK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IWL_HCMD_DFL_NOCOPY ; 
 int /*<<< orphan*/  IWL_TM_ATTR_COMMAND ; 
 size_t IWL_TM_ATTR_UCODE_CMD_DATA ; 
 size_t IWL_TM_ATTR_UCODE_CMD_ID ; 
 size_t IWL_TM_ATTR_UCODE_CMD_SKB ; 
 int /*<<< orphan*/  IWL_TM_ATTR_UCODE_RX_PKT ; 
 int /*<<< orphan*/  IWL_TM_CMD_DEV2APP_UCODE_RX_PKT ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_host_cmd*) ; 
 struct sk_buff* FUNC3 (struct iwl_test*,int) ; 
 int FUNC4 (struct iwl_test*,struct sk_buff*) ; 
 int FUNC5 (struct iwl_test*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_host_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr*) ; 
 int FUNC12 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC13 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC14 (struct nlattr*) ; 
 scalar_t__ FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct iwl_test *tst, struct nlattr **tb)
{
	struct iwl_host_cmd cmd;
	struct iwl_rx_packet *pkt;
	struct sk_buff *skb;
	void *reply_buf;
	u32 reply_len;
	int ret;
	bool cmd_want_skb;

	FUNC10(&cmd, 0, sizeof(struct iwl_host_cmd));

	if (!tb[IWL_TM_ATTR_UCODE_CMD_ID] ||
	    !tb[IWL_TM_ATTR_UCODE_CMD_DATA]) {
		FUNC1(tst->trans, "Missing fw command mandatory fields\n");
		return -ENOMSG;
	}

	cmd.flags = CMD_ON_DEMAND | CMD_SYNC;
	cmd_want_skb = FUNC12(tb[IWL_TM_ATTR_UCODE_CMD_SKB]);
	if (cmd_want_skb)
		cmd.flags |= CMD_WANT_SKB;

	cmd.id = FUNC13(tb[IWL_TM_ATTR_UCODE_CMD_ID]);
	cmd.data[0] = FUNC11(tb[IWL_TM_ATTR_UCODE_CMD_DATA]);
	cmd.len[0] = FUNC14(tb[IWL_TM_ATTR_UCODE_CMD_DATA]);
	cmd.dataflags[0] = IWL_HCMD_DFL_NOCOPY;
	FUNC0(tst->trans, "test fw cmd=0x%x, flags 0x%x, len %d\n",
		       cmd.id, cmd.flags, cmd.len[0]);

	ret = FUNC5(tst, &cmd);
	if (ret) {
		FUNC1(tst->trans, "Failed to send hcmd\n");
		return ret;
	}
	if (!cmd_want_skb)
		return ret;

	/* Handling return of SKB to the user */
	pkt = cmd.resp_pkt;
	if (!pkt) {
		FUNC1(tst->trans, "HCMD received a null response packet\n");
		return ret;
	}

	reply_len = FUNC9(pkt->len_n_flags) & FH_RSCSR_FRAME_SIZE_MSK;
	skb = FUNC3(tst, reply_len + 20);
	reply_buf = FUNC8(&pkt->hdr, reply_len, GFP_KERNEL);
	if (!skb || !reply_buf) {
		FUNC7(skb);
		FUNC6(reply_buf);
		return -ENOMEM;
	}

	/* The reply is in a page, that we cannot send to user space. */
	FUNC2(&cmd);

	if (FUNC16(skb, IWL_TM_ATTR_COMMAND,
			IWL_TM_CMD_DEV2APP_UCODE_RX_PKT) ||
	    FUNC15(skb, IWL_TM_ATTR_UCODE_RX_PKT, reply_len, reply_buf))
		goto nla_put_failure;
	return FUNC4(tst, skb);

nla_put_failure:
	FUNC0(tst->trans, "Failed creating NL attributes\n");
	FUNC6(reply_buf);
	FUNC7(skb);
	return -ENOMSG;
}