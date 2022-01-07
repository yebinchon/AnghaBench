
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; struct btsdio_data* driver_data; } ;
struct btsdio_data {int dummy; } ;


 int BT_DBG (char*,int ) ;
 int kfree (struct btsdio_data*) ;

__attribute__((used)) static void btsdio_destruct(struct hci_dev *hdev)
{
 struct btsdio_data *data = hdev->driver_data;

 BT_DBG("%s", hdev->name);

 kfree(data);
}
