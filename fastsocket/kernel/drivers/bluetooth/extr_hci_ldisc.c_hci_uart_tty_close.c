
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int * disc_data; } ;
struct hci_uart {TYPE_1__* proto; int flags; struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int (* close ) (struct hci_uart*) ;} ;


 int BT_DBG (char*,struct tty_struct*) ;
 int HCI_UART_PROTO_SET ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_uart_close (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int stub1 (struct hci_uart*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void hci_uart_tty_close(struct tty_struct *tty)
{
 struct hci_uart *hu = (void *)tty->disc_data;

 BT_DBG("tty %p", tty);


 tty->disc_data = ((void*)0);

 if (hu) {
  struct hci_dev *hdev = hu->hdev;

  if (hdev)
   hci_uart_close(hdev);

  if (test_and_clear_bit(HCI_UART_PROTO_SET, &hu->flags)) {
   hu->proto->close(hu);
   hci_unregister_dev(hdev);
   hci_free_dev(hdev);
  }
 }
}
