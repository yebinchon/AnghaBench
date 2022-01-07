
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miscdevice {int minor; int list; } ;


 int DYNAMIC_MINORS ;
 int EINVAL ;
 int MISC_MAJOR ;
 int MKDEV (int ,int) ;
 int device_destroy (int ,int ) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int misc_class ;
 int* misc_minors ;
 int misc_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int misc_deregister(struct miscdevice *misc)
{
 int i = misc->minor;

 if (list_empty(&misc->list))
  return -EINVAL;

 mutex_lock(&misc_mtx);
 list_del(&misc->list);
 device_destroy(misc_class, MKDEV(MISC_MAJOR, misc->minor));
 if (i < DYNAMIC_MINORS && i>0) {
  misc_minors[i>>3] &= ~(1 << (misc->minor & 7));
 }
 mutex_unlock(&misc_mtx);
 return 0;
}
