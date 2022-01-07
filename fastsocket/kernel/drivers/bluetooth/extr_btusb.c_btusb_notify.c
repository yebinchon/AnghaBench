
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sco_num; } ;
struct hci_dev {TYPE_1__ conn_hash; int name; struct btusb_data* driver_data; } ;
struct btusb_data {scalar_t__ sco_num; int work; } ;


 int BT_DBG (char*,int ,unsigned int) ;
 int schedule_work (int *) ;

__attribute__((used)) static void btusb_notify(struct hci_dev *hdev, unsigned int evt)
{
 struct btusb_data *data = hdev->driver_data;

 BT_DBG("%s evt %d", hdev->name, evt);

 if (hdev->conn_hash.sco_num != data->sco_num) {
  data->sco_num = hdev->conn_hash.sco_num;
  schedule_work(&data->work);
 }
}
