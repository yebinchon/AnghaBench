
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flags; struct bfusb_data* driver_data; } ;
struct bfusb_data {int lock; } ;


 int BFUSB_MAX_BULK_RX ;
 int BT_DBG (char*,struct hci_dev*,struct bfusb_data*) ;
 int HCI_RUNNING ;
 int bfusb_rx_submit (struct bfusb_data*,int *) ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bfusb_open(struct hci_dev *hdev)
{
 struct bfusb_data *data = hdev->driver_data;
 unsigned long flags;
 int i, err;

 BT_DBG("hdev %p bfusb %p", hdev, data);

 if (test_and_set_bit(HCI_RUNNING, &hdev->flags))
  return 0;

 write_lock_irqsave(&data->lock, flags);

 err = bfusb_rx_submit(data, ((void*)0));
 if (!err) {
  for (i = 1; i < BFUSB_MAX_BULK_RX; i++)
   bfusb_rx_submit(data, ((void*)0));
 } else {
  clear_bit(HCI_RUNNING, &hdev->flags);
 }

 write_unlock_irqrestore(&data->lock, flags);

 return err;
}
