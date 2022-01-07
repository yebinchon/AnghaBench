
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int name; } ;
struct TYPE_3__ {struct hci_dev* hdev; } ;
typedef TYPE_1__ bt3c_info_t ;


 int BT_ERR (char*,int ) ;
 int ENODEV ;
 int bt3c_hci_close (struct hci_dev*) ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_unregister_dev (struct hci_dev*) ;

__attribute__((used)) static int bt3c_close(bt3c_info_t *info)
{
 struct hci_dev *hdev = info->hdev;

 if (!hdev)
  return -ENODEV;

 bt3c_hci_close(hdev);

 if (hci_unregister_dev(hdev) < 0)
  BT_ERR("Can't unregister HCI device %s", hdev->name);

 hci_free_dev(hdev);

 return 0;
}
