
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flags; int name; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int rx_anchor; } ;


 int BT_DBG (char*,int ) ;
 int HCI_RUNNING ;
 int test_and_clear_bit (int ,int *) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int bpa10x_close(struct hci_dev *hdev)
{
 struct bpa10x_data *data = hdev->driver_data;

 BT_DBG("%s", hdev->name);

 if (!test_and_clear_bit(HCI_RUNNING, &hdev->flags))
  return 0;

 usb_kill_anchored_urbs(&data->rx_anchor);

 return 0;
}
