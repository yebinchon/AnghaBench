
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_dev {int netdev; int ref_count; } ;


 scalar_t__ atomic_read (int *) ;
 int dev_put (int ) ;
 int kfree (struct cnic_dev*) ;
 int msleep (int) ;
 int netdev_err (int ,char*) ;
 int netdev_info (int ,char*) ;

__attribute__((used)) static void cnic_free_dev(struct cnic_dev *dev)
{
 int i = 0;

 while ((atomic_read(&dev->ref_count) != 0) && i < 10) {
  msleep(100);
  i++;
 }
 if (atomic_read(&dev->ref_count) != 0)
  netdev_err(dev->netdev, "Failed waiting for ref count to go to zero\n");

 netdev_info(dev->netdev, "Removed CNIC device\n");
 dev_put(dev->netdev);
 kfree(dev);
}
