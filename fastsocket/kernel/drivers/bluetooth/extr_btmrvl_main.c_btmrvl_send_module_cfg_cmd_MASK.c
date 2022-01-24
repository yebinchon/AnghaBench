#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {void* dev; } ;
struct TYPE_7__ {int sendcmdflag; scalar_t__ hcidev; } ;
struct TYPE_5__ {int /*<<< orphan*/  wait_q; } ;
struct btmrvl_private {TYPE_3__ btmrvl_dev; TYPE_2__* adapter; TYPE_1__ main_thread; } ;
struct btmrvl_cmd {int length; int* data; int /*<<< orphan*/  ocf_ogf; } ;
struct TYPE_8__ {int /*<<< orphan*/  pkt_type; } ;
struct TYPE_6__ {int cmd_complete; int /*<<< orphan*/  cmd_wait_q; int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CMD_MODULE_CFG_REQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MRVL_VENDOR_PKT ; 
 int /*<<< orphan*/  OGF ; 
 int /*<<< orphan*/  WAIT_UNTIL_CMD_RESP ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct btmrvl_private *priv, int subcmd)
{
	struct sk_buff *skb;
	struct btmrvl_cmd *cmd;
	int ret = 0;

	skb = FUNC3(sizeof(*cmd), GFP_ATOMIC);
	if (skb == NULL) {
		FUNC1("No free skb");
		return -ENOMEM;
	}

	cmd = (struct btmrvl_cmd *) FUNC7(skb, sizeof(*cmd));
	cmd->ocf_ogf = FUNC4(FUNC5(OGF, BT_CMD_MODULE_CFG_REQ));
	cmd->length = 1;
	cmd->data[0] = subcmd;

	FUNC2(skb)->pkt_type = MRVL_VENDOR_PKT;

	skb->dev = (void *) priv->btmrvl_dev.hcidev;
	FUNC8(&priv->adapter->tx_queue, skb);

	priv->btmrvl_dev.sendcmdflag = true;

	priv->adapter->cmd_complete = false;

	FUNC0("Queue module cfg Command");

	FUNC10(&priv->main_thread.wait_q);

	if (!FUNC9(priv->adapter->cmd_wait_q,
				priv->adapter->cmd_complete,
				FUNC6(WAIT_UNTIL_CMD_RESP))) {
		ret = -ETIMEDOUT;
		FUNC1("module_cfg_cmd(%x): timeout: %d",
					subcmd, priv->btmrvl_dev.sendcmdflag);
	}

	FUNC0("module cfg Command done");

	return ret;
}