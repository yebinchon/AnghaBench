
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int flags; int name; struct btusb_data* driver_data; } ;
struct btusb_data {TYPE_1__* intf; int flags; int intr_anchor; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;


 int BTUSB_BULK_RUNNING ;
 int BTUSB_INTR_RUNNING ;
 int BT_DBG (char*,int ) ;
 int GFP_KERNEL ;
 int HCI_RUNNING ;
 int btusb_submit_bulk_urb (struct hci_dev*,int ) ;
 int btusb_submit_intr_urb (struct hci_dev*,int ) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usb_autopm_get_interface (TYPE_1__*) ;
 int usb_autopm_put_interface (TYPE_1__*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int btusb_open(struct hci_dev *hdev)
{
 struct btusb_data *data = hdev->driver_data;
 int err;

 BT_DBG("%s", hdev->name);

 err = usb_autopm_get_interface(data->intf);
 if (err < 0)
  return err;

 data->intf->needs_remote_wakeup = 1;

 if (test_and_set_bit(HCI_RUNNING, &hdev->flags))
  goto done;

 if (test_and_set_bit(BTUSB_INTR_RUNNING, &data->flags))
  goto done;

 err = btusb_submit_intr_urb(hdev, GFP_KERNEL);
 if (err < 0)
  goto failed;

 err = btusb_submit_bulk_urb(hdev, GFP_KERNEL);
 if (err < 0) {
  usb_kill_anchored_urbs(&data->intr_anchor);
  goto failed;
 }

 set_bit(BTUSB_BULK_RUNNING, &data->flags);
 btusb_submit_bulk_urb(hdev, GFP_KERNEL);

done:
 usb_autopm_put_interface(data->intf);
 return 0;

failed:
 clear_bit(BTUSB_INTR_RUNNING, &data->flags);
 clear_bit(HCI_RUNNING, &hdev->flags);
 usb_autopm_put_interface(data->intf);
 return err;
}
