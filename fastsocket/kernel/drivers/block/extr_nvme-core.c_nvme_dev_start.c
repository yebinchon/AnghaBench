
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int node; } ;


 int EBUSY ;
 int dev_list ;
 int dev_list_lock ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int nvme_configure_admin_queue (struct nvme_dev*) ;
 int nvme_dev_map (struct nvme_dev*) ;
 int nvme_dev_unmap (struct nvme_dev*) ;
 int nvme_setup_io_queues (struct nvme_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nvme_dev_start(struct nvme_dev *dev)
{
 int result;

 result = nvme_dev_map(dev);
 if (result)
  return result;

 result = nvme_configure_admin_queue(dev);
 if (result)
  goto unmap;

 spin_lock(&dev_list_lock);
 list_add(&dev->node, &dev_list);
 spin_unlock(&dev_list_lock);

 result = nvme_setup_io_queues(dev);
 if (result && result != -EBUSY)
  goto disable;

 return result;

 disable:
 spin_lock(&dev_list_lock);
 list_del_init(&dev->node);
 spin_unlock(&dev_list_lock);
 unmap:
 nvme_dev_unmap(dev);
 return result;
}
