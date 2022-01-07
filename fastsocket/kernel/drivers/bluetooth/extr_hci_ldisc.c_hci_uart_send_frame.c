
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct sk_buff {int len; scalar_t__ dev; } ;
struct hci_uart {TYPE_1__* proto; struct tty_struct* tty; } ;
struct hci_dev {int name; scalar_t__ driver_data; int flags; } ;
struct TYPE_4__ {int pkt_type; } ;
struct TYPE_3__ {int (* enqueue ) (struct hci_uart*,struct sk_buff*) ;} ;


 int BT_DBG (char*,int ,int ,int ) ;
 int BT_ERR (char*) ;
 int EBUSY ;
 int ENODEV ;
 int HCI_RUNNING ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int stub1 (struct hci_uart*,struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hci_uart_send_frame(struct sk_buff *skb)
{
 struct hci_dev* hdev = (struct hci_dev *) skb->dev;
 struct tty_struct *tty;
 struct hci_uart *hu;

 if (!hdev) {
  BT_ERR("Frame for uknown device (hdev=NULL)");
  return -ENODEV;
 }

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return -EBUSY;

 hu = (struct hci_uart *) hdev->driver_data;
 tty = hu->tty;

 BT_DBG("%s: type %d len %d", hdev->name, bt_cb(skb)->pkt_type, skb->len);

 hu->proto->enqueue(hu, skb);

 hci_uart_tx_wakeup(hu);

 return 0;
}
