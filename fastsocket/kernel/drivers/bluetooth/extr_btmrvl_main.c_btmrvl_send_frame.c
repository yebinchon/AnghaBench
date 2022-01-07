
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int data; int pkt_type; scalar_t__ dev; } ;
struct TYPE_5__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int flags; scalar_t__ driver_data; } ;
struct TYPE_7__ {int wait_q; } ;
struct btmrvl_private {TYPE_3__ main_thread; TYPE_2__* adapter; } ;
struct TYPE_8__ {int pkt_type; } ;
struct TYPE_6__ {int tx_queue; } ;


 int BT_DBG (char*,int ,int ) ;
 int BT_ERR (char*,...) ;
 int DUMP_PREFIX_OFFSET ;
 int EBUSY ;
 int ENODEV ;


 int HCI_RUNNING ;

 TYPE_4__* bt_cb (struct sk_buff*) ;
 int print_hex_dump_bytes (char*,int ,int ,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int btmrvl_send_frame(struct sk_buff *skb)
{
 struct hci_dev *hdev = (struct hci_dev *) skb->dev;
 struct btmrvl_private *priv = ((void*)0);

 BT_DBG("type=%d, len=%d", skb->pkt_type, skb->len);

 if (!hdev || !hdev->driver_data) {
  BT_ERR("Frame for unknown HCI device");
  return -ENODEV;
 }

 priv = (struct btmrvl_private *) hdev->driver_data;
 if (!test_bit(HCI_RUNNING, &hdev->flags)) {
  BT_ERR("Failed testing HCI_RUNING, flags=%lx", hdev->flags);
  print_hex_dump_bytes("data: ", DUMP_PREFIX_OFFSET,
       skb->data, skb->len);
  return -EBUSY;
 }

 switch (bt_cb(skb)->pkt_type) {
 case 129:
  hdev->stat.cmd_tx++;
  break;

 case 130:
  hdev->stat.acl_tx++;
  break;

 case 128:
  hdev->stat.sco_tx++;
  break;
 }

 skb_queue_tail(&priv->adapter->tx_queue, skb);

 wake_up_interruptible(&priv->main_thread.wait_q);

 return 0;
}
