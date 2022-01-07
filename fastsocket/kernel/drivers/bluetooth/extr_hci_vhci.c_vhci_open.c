
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhci_data {struct hci_dev* hdev; int read_wait; int readq; } ;
struct inode {int dummy; } ;
struct hci_dev {int owner; int destruct; int send; int flush; int close; int open; struct vhci_data* driver_data; int type; } ;
struct file {struct vhci_data* private_data; } ;


 int BT_ERR (char*) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_VIRTUAL ;
 int THIS_MODULE ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_register_dev (struct hci_dev*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct vhci_data*) ;
 struct vhci_data* kzalloc (int,int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int skb_queue_head_init (int *) ;
 int vhci_close_dev ;
 int vhci_destruct ;
 int vhci_flush ;
 int vhci_open_dev ;
 int vhci_send_frame ;

__attribute__((used)) static int vhci_open(struct inode *inode, struct file *file)
{
 struct vhci_data *data;
 struct hci_dev *hdev;

 data = kzalloc(sizeof(struct vhci_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 skb_queue_head_init(&data->readq);
 init_waitqueue_head(&data->read_wait);

 hdev = hci_alloc_dev();
 if (!hdev) {
  kfree(data);
  return -ENOMEM;
 }

 data->hdev = hdev;

 hdev->type = HCI_VIRTUAL;
 hdev->driver_data = data;

 hdev->open = vhci_open_dev;
 hdev->close = vhci_close_dev;
 hdev->flush = vhci_flush;
 hdev->send = vhci_send_frame;
 hdev->destruct = vhci_destruct;

 hdev->owner = THIS_MODULE;

 if (hci_register_dev(hdev) < 0) {
  BT_ERR("Can't register HCI device");
  kfree(data);
  hci_free_dev(hdev);
  return -EBUSY;
 }

 file->private_data = data;

 return nonseekable_open(inode, file);
}
