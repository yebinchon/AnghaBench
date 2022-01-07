
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ dev; } ;
struct TYPE_5__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; scalar_t__ driver_data; } ;
struct TYPE_6__ {int txq; } ;
typedef TYPE_2__ bluecard_info_t ;
struct TYPE_7__ {int pkt_type; } ;


 int BT_ERR (char*) ;
 int ENODEV ;



 int bluecard_write_wakeup (TYPE_2__*) ;
 TYPE_3__* bt_cb (struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int bluecard_hci_send_frame(struct sk_buff *skb)
{
 bluecard_info_t *info;
 struct hci_dev *hdev = (struct hci_dev *)(skb->dev);

 if (!hdev) {
  BT_ERR("Frame for unknown HCI device (hdev=NULL)");
  return -ENODEV;
 }

 info = (bluecard_info_t *)(hdev->driver_data);

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
 };


 memcpy(skb_push(skb, 1), &bt_cb(skb)->pkt_type, 1);
 skb_queue_tail(&(info->txq), skb);

 bluecard_write_wakeup(info);

 return 0;
}
