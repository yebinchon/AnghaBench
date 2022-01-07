
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct hiddev_list {struct hiddev_list* hiddev; int hid; scalar_t__ exist; int open; int list_lock; int node; } ;
struct file {struct hiddev_list* private_data; } ;


 int kfree (struct hiddev_list*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbhid_close (int ) ;
 int usbhid_put_power (int ) ;

__attribute__((used)) static int hiddev_release(struct inode * inode, struct file * file)
{
 struct hiddev_list *list = file->private_data;
 unsigned long flags;

 spin_lock_irqsave(&list->hiddev->list_lock, flags);
 list_del(&list->node);
 spin_unlock_irqrestore(&list->hiddev->list_lock, flags);

 if (!--list->hiddev->open) {
  if (list->hiddev->exist) {
   usbhid_close(list->hiddev->hid);
   usbhid_put_power(list->hiddev->hid);
  } else {
   kfree(list->hiddev);
  }
 }

 kfree(list);

 return 0;
}
