
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; int flags; } ;
struct sk_buff {int len; int data; } ;
struct hci_uart {int tx_state; struct sk_buff* tx_skb; struct hci_dev* hdev; struct tty_struct* tty; } ;
struct TYPE_5__ {int byte_tx; } ;
struct hci_dev {TYPE_2__ stat; } ;
struct TYPE_6__ {int pkt_type; } ;
struct TYPE_4__ {int (* write ) (struct tty_struct*,int ,int) ;} ;


 int BT_DBG (char*) ;
 int HCI_UART_SENDING ;
 int HCI_UART_TX_WAKEUP ;
 int TTY_DO_WRITE_WAKEUP ;
 TYPE_3__* bt_cb (struct sk_buff*) ;
 int clear_bit (int ,int *) ;
 struct sk_buff* hci_uart_dequeue (struct hci_uart*) ;
 int hci_uart_tx_complete (struct hci_uart*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int set_bit (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int stub1 (struct tty_struct*,int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int hci_uart_tx_wakeup(struct hci_uart *hu)
{
 struct tty_struct *tty = hu->tty;
 struct hci_dev *hdev = hu->hdev;
 struct sk_buff *skb;

 if (test_and_set_bit(HCI_UART_SENDING, &hu->tx_state)) {
  set_bit(HCI_UART_TX_WAKEUP, &hu->tx_state);
  return 0;
 }

 BT_DBG("");

restart:
 clear_bit(HCI_UART_TX_WAKEUP, &hu->tx_state);

 while ((skb = hci_uart_dequeue(hu))) {
  int len;

  set_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
  len = tty->ops->write(tty, skb->data, skb->len);
  hdev->stat.byte_tx += len;

  skb_pull(skb, len);
  if (skb->len) {
   hu->tx_skb = skb;
   break;
  }

  hci_uart_tx_complete(hu, bt_cb(skb)->pkt_type);
  kfree_skb(skb);
 }

 if (test_bit(HCI_UART_TX_WAKEUP, &hu->tx_state))
  goto restart;

 clear_bit(HCI_UART_SENDING, &hu->tx_state);
 return 0;
}
