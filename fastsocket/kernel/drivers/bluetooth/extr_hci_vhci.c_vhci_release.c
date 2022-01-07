
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {struct hci_dev* hdev; } ;
struct inode {int dummy; } ;
struct hci_dev {int name; } ;
struct file {struct vhci_data* private_data; } ;


 int BT_ERR (char*,int ) ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_unregister_dev (struct hci_dev*) ;

__attribute__((used)) static int vhci_release(struct inode *inode, struct file *file)
{
 struct vhci_data *data = file->private_data;
 struct hci_dev *hdev = data->hdev;

 if (hci_unregister_dev(hdev) < 0) {
  BT_ERR("Can't unregister HCI device %s", hdev->name);
 }

 hci_free_dev(hdev);

 file->private_data = ((void*)0);

 return 0;
}
