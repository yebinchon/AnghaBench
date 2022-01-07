
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {void* dev; } ;
struct TYPE_7__ {int sendcmdflag; scalar_t__ hcidev; } ;
struct TYPE_5__ {int wait_q; } ;
struct btmrvl_private {TYPE_3__ btmrvl_dev; TYPE_2__* adapter; TYPE_1__ main_thread; } ;
struct btmrvl_cmd {int length; int* data; int ocf_ogf; } ;
struct TYPE_8__ {int pkt_type; } ;
struct TYPE_6__ {int cmd_complete; int cmd_wait_q; int tx_queue; } ;


 int BT_CMD_MODULE_CFG_REQ ;
 int BT_DBG (char*) ;
 int BT_ERR (char*,...) ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_ATOMIC ;
 int MRVL_VENDOR_PKT ;
 int OGF ;
 int WAIT_UNTIL_CMD_RESP ;
 TYPE_4__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int cpu_to_le16 (int ) ;
 int hci_opcode_pack (int ,int ) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int wake_up_interruptible (int *) ;

int btmrvl_send_module_cfg_cmd(struct btmrvl_private *priv, int subcmd)
{
 struct sk_buff *skb;
 struct btmrvl_cmd *cmd;
 int ret = 0;

 skb = bt_skb_alloc(sizeof(*cmd), GFP_ATOMIC);
 if (skb == ((void*)0)) {
  BT_ERR("No free skb");
  return -ENOMEM;
 }

 cmd = (struct btmrvl_cmd *) skb_put(skb, sizeof(*cmd));
 cmd->ocf_ogf = cpu_to_le16(hci_opcode_pack(OGF, BT_CMD_MODULE_CFG_REQ));
 cmd->length = 1;
 cmd->data[0] = subcmd;

 bt_cb(skb)->pkt_type = MRVL_VENDOR_PKT;

 skb->dev = (void *) priv->btmrvl_dev.hcidev;
 skb_queue_head(&priv->adapter->tx_queue, skb);

 priv->btmrvl_dev.sendcmdflag = 1;

 priv->adapter->cmd_complete = 0;

 BT_DBG("Queue module cfg Command");

 wake_up_interruptible(&priv->main_thread.wait_q);

 if (!wait_event_interruptible_timeout(priv->adapter->cmd_wait_q,
    priv->adapter->cmd_complete,
    msecs_to_jiffies(WAIT_UNTIL_CMD_RESP))) {
  ret = -ETIMEDOUT;
  BT_ERR("module_cfg_cmd(%x): timeout: %d",
     subcmd, priv->btmrvl_dev.sendcmdflag);
 }

 BT_DBG("module cfg Command done");

 return ret;
}
