
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; struct btusb_data* driver_data; } ;
struct btusb_data {int tx_anchor; } ;


 int BT_DBG (char*,int ) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int btusb_flush(struct hci_dev *hdev)
{
 struct btusb_data *data = hdev->driver_data;

 BT_DBG("%s", hdev->name);

 usb_kill_anchored_urbs(&data->tx_anchor);

 return 0;
}
