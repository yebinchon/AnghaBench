
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int instance; } ;


 int dev_list_lock ;
 int ida_remove (int *,int ) ;
 int nvme_instance_ida ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nvme_release_instance(struct nvme_dev *dev)
{
 spin_lock(&dev_list_lock);
 ida_remove(&nvme_instance_ida, dev->instance);
 spin_unlock(&dev_list_lock);
}
