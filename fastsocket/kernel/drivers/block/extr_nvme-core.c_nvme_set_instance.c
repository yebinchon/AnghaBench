
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int instance; } ;


 int EAGAIN ;
 int ENODEV ;
 int GFP_KERNEL ;
 int dev_list_lock ;
 int ida_get_new (int *,int*) ;
 int ida_pre_get (int *,int ) ;
 int nvme_instance_ida ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nvme_set_instance(struct nvme_dev *dev)
{
 int instance, error;

 do {
  if (!ida_pre_get(&nvme_instance_ida, GFP_KERNEL))
   return -ENODEV;

  spin_lock(&dev_list_lock);
  error = ida_get_new(&nvme_instance_ida, &instance);
  spin_unlock(&dev_list_lock);
 } while (error == -EAGAIN);

 if (error)
  return -ENODEV;

 dev->instance = instance;
 return 0;
}
