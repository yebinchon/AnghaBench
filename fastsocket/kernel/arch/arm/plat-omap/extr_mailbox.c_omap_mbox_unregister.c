
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {struct omap_mbox* next; int dev; } ;


 int EINVAL ;
 int dev_attr_mbox ;
 int device_remove_file (int ,int *) ;
 int device_unregister (int ) ;
 struct omap_mbox* mboxes ;
 int mboxes_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int omap_mbox_unregister(struct omap_mbox *mbox)
{
 struct omap_mbox **tmp;

 write_lock(&mboxes_lock);
 tmp = &mboxes;
 while (*tmp) {
  if (mbox == *tmp) {
   *tmp = mbox->next;
   mbox->next = ((void*)0);
   write_unlock(&mboxes_lock);
   device_remove_file(mbox->dev, &dev_attr_mbox);
   device_unregister(mbox->dev);
   return 0;
  }
  tmp = &(*tmp)->next;
 }
 write_unlock(&mboxes_lock);

 return -EINVAL;
}
