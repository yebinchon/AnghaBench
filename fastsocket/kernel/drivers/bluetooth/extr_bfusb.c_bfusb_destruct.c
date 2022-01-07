
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {struct bfusb_data* driver_data; } ;
struct bfusb_data {int dummy; } ;


 int BT_DBG (char*,struct hci_dev*,struct bfusb_data*) ;
 int kfree (struct bfusb_data*) ;

__attribute__((used)) static void bfusb_destruct(struct hci_dev *hdev)
{
 struct bfusb_data *data = hdev->driver_data;

 BT_DBG("hdev %p bfusb %p", hdev, data);

 kfree(data);
}
