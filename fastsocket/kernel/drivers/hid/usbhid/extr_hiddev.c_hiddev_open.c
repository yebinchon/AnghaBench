
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct hiddev_list {TYPE_1__* hiddev; int node; int thread_lock; } ;
struct hid_device {int dummy; } ;
struct file {struct hiddev_list* private_data; } ;
struct TYPE_2__ {struct hid_device* hid; scalar_t__ exist; int open; int list_lock; int list; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIDDEV_MINORS ;
 int HIDDEV_MINOR_BASE ;
 TYPE_1__** hiddev_table ;
 int iminor (struct inode*) ;
 int kfree (struct hiddev_list*) ;
 struct hiddev_list* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usbhid_get_power (struct hid_device*) ;
 int usbhid_open (struct hid_device*) ;

__attribute__((used)) static int hiddev_open(struct inode *inode, struct file *file)
{
 struct hiddev_list *list;
 int res;

 int i = iminor(inode) - HIDDEV_MINOR_BASE;

 if (i >= HIDDEV_MINORS || i < 0 || !hiddev_table[i])
  return -ENODEV;

 if (!(list = kzalloc(sizeof(struct hiddev_list), GFP_KERNEL)))
  return -ENOMEM;
 mutex_init(&list->thread_lock);

 list->hiddev = hiddev_table[i];


 file->private_data = list;





 if (list->hiddev->exist) {
  if (!list->hiddev->open++) {
   res = usbhid_open(hiddev_table[i]->hid);
   if (res < 0) {
    res = -EIO;
    goto bail;
   }
  }
 } else {
  res = -ENODEV;
  goto bail;
 }

 spin_lock_irq(&list->hiddev->list_lock);
 list_add_tail(&list->node, &hiddev_table[i]->list);
 spin_unlock_irq(&list->hiddev->list_lock);

 if (!list->hiddev->open++)
  if (list->hiddev->exist) {
   struct hid_device *hid = hiddev_table[i]->hid;
   res = usbhid_get_power(hid);
   if (res < 0) {
    res = -EIO;
    goto bail;
   }
   usbhid_open(hid);
  }

 return 0;
bail:
 file->private_data = ((void*)0);
 kfree(list);
 return res;
}
