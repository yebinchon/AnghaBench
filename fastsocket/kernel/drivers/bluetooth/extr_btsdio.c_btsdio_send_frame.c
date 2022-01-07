
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ dev; } ;
struct TYPE_3__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int flags; int name; struct btsdio_data* driver_data; } ;
struct btsdio_data {int work; int txq; } ;
struct TYPE_4__ {int pkt_type; } ;


 int BT_DBG (char*,int ) ;
 int EBUSY ;
 int EILSEQ ;


 int HCI_RUNNING ;

 TYPE_2__* bt_cb (struct sk_buff*) ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int btsdio_send_frame(struct sk_buff *skb)
{
 struct hci_dev *hdev = (struct hci_dev *) skb->dev;
 struct btsdio_data *data = hdev->driver_data;

 BT_DBG("%s", hdev->name);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return -EBUSY;

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

 default:
  return -EILSEQ;
 }

 skb_queue_tail(&data->txq, skb);

 schedule_work(&data->work);

 return 0;
}
