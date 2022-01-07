
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhci_data {int read_wait; int readq; } ;
struct sk_buff {scalar_t__ dev; } ;
struct hci_dev {struct vhci_data* driver_data; int flags; } ;
struct TYPE_2__ {int pkt_type; } ;


 int BT_ERR (char*) ;
 int EBUSY ;
 int ENODEV ;
 int HCI_RUNNING ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int vhci_send_frame(struct sk_buff *skb)
{
 struct hci_dev* hdev = (struct hci_dev *) skb->dev;
 struct vhci_data *data;

 if (!hdev) {
  BT_ERR("Frame for unknown HCI device (hdev=NULL)");
  return -ENODEV;
 }

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return -EBUSY;

 data = hdev->driver_data;

 memcpy(skb_push(skb, 1), &bt_cb(skb)->pkt_type, 1);
 skb_queue_tail(&data->readq, skb);

 wake_up_interruptible(&data->read_wait);

 return 0;
}
