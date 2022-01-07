
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct hci_dev* hdev; } ;
struct hci_dev {int quirks; int owner; int destruct; int send; int flush; int close; int open; struct hci_uart* driver_data; int type; } ;


 int BT_DBG (char*) ;
 int BT_ERR (char*) ;
 int ENODEV ;
 int ENOMEM ;
 int HCI_QUIRK_NO_RESET ;
 int HCI_UART ;
 int THIS_MODULE ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_register_dev (struct hci_dev*) ;
 int hci_uart_close ;
 int hci_uart_destruct ;
 int hci_uart_flush ;
 int hci_uart_open ;
 int hci_uart_send_frame ;
 int reset ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int hci_uart_register_dev(struct hci_uart *hu)
{
 struct hci_dev *hdev;

 BT_DBG("");


 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can't allocate HCI device");
  return -ENOMEM;
 }

 hu->hdev = hdev;

 hdev->type = HCI_UART;
 hdev->driver_data = hu;

 hdev->open = hci_uart_open;
 hdev->close = hci_uart_close;
 hdev->flush = hci_uart_flush;
 hdev->send = hci_uart_send_frame;
 hdev->destruct = hci_uart_destruct;

 hdev->owner = THIS_MODULE;

 if (!reset)
  set_bit(HCI_QUIRK_NO_RESET, &hdev->quirks);

 if (hci_register_dev(hdev) < 0) {
  BT_ERR("Can't register HCI device");
  hci_free_dev(hdev);
  return -ENODEV;
 }

 return 0;
}
