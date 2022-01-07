
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flags; int name; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int rx_anchor; } ;


 int BT_DBG (char*,int ) ;
 int HCI_RUNNING ;
 int bpa10x_submit_bulk_urb (struct hci_dev*) ;
 int bpa10x_submit_intr_urb (struct hci_dev*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int bpa10x_open(struct hci_dev *hdev)
{
 struct bpa10x_data *data = hdev->driver_data;
 int err;

 BT_DBG("%s", hdev->name);

 if (test_and_set_bit(HCI_RUNNING, &hdev->flags))
  return 0;

 err = bpa10x_submit_intr_urb(hdev);
 if (err < 0)
  goto error;

 err = bpa10x_submit_bulk_urb(hdev);
 if (err < 0)
  goto error;

 return 0;

error:
 usb_kill_anchored_urbs(&data->rx_anchor);

 clear_bit(HCI_RUNNING, &hdev->flags);

 return err;
}
