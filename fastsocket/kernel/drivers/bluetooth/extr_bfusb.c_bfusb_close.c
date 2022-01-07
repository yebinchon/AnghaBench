
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flags; struct bfusb_data* driver_data; } ;
struct bfusb_data {int lock; } ;


 int BT_DBG (char*,struct hci_dev*,struct bfusb_data*) ;
 int HCI_RUNNING ;
 int bfusb_flush (struct hci_dev*) ;
 int bfusb_unlink_urbs (struct bfusb_data*) ;
 int test_and_clear_bit (int ,int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bfusb_close(struct hci_dev *hdev)
{
 struct bfusb_data *data = hdev->driver_data;
 unsigned long flags;

 BT_DBG("hdev %p bfusb %p", hdev, data);

 if (!test_and_clear_bit(HCI_RUNNING, &hdev->flags))
  return 0;

 write_lock_irqsave(&data->lock, flags);
 write_unlock_irqrestore(&data->lock, flags);

 bfusb_unlink_urbs(data);
 bfusb_flush(hdev);

 return 0;
}
