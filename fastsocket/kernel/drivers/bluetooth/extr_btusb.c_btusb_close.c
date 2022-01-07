
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int flags; int name; struct btusb_data* driver_data; } ;
struct btusb_data {int deferred; TYPE_1__* intf; int flags; int waker; int work; } ;
struct TYPE_3__ {scalar_t__ needs_remote_wakeup; } ;


 int BTUSB_BULK_RUNNING ;
 int BTUSB_INTR_RUNNING ;
 int BTUSB_ISOC_RUNNING ;
 int BT_DBG (char*,int ) ;
 int HCI_RUNNING ;
 int btusb_stop_traffic (struct btusb_data*) ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;
 int usb_autopm_get_interface (TYPE_1__*) ;
 int usb_autopm_put_interface (TYPE_1__*) ;
 int usb_scuttle_anchored_urbs (int *) ;

__attribute__((used)) static int btusb_close(struct hci_dev *hdev)
{
 struct btusb_data *data = hdev->driver_data;
 int err;

 BT_DBG("%s", hdev->name);

 if (!test_and_clear_bit(HCI_RUNNING, &hdev->flags))
  return 0;

 cancel_work_sync(&data->work);
 cancel_work_sync(&data->waker);

 clear_bit(BTUSB_ISOC_RUNNING, &data->flags);
 clear_bit(BTUSB_BULK_RUNNING, &data->flags);
 clear_bit(BTUSB_INTR_RUNNING, &data->flags);

 btusb_stop_traffic(data);
 err = usb_autopm_get_interface(data->intf);
 if (err < 0)
  goto failed;

 data->intf->needs_remote_wakeup = 0;
 usb_autopm_put_interface(data->intf);

failed:
 usb_scuttle_anchored_urbs(&data->deferred);
 return 0;
}
