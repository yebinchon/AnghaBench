
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {struct bfusb_data* driver_data; } ;
struct bfusb_data {int transmit_q; } ;


 int BT_DBG (char*,struct hci_dev*,struct bfusb_data*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int bfusb_flush(struct hci_dev *hdev)
{
 struct bfusb_data *data = hdev->driver_data;

 BT_DBG("hdev %p bfusb %p", hdev, data);

 skb_queue_purge(&data->transmit_q);

 return 0;
}
