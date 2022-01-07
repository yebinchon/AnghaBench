
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int kref; } ;
struct inode {int dummy; } ;
struct file {struct nvme_dev* private_data; } ;


 int kref_put (int *,int ) ;
 int nvme_free_dev ;

__attribute__((used)) static int nvme_dev_release(struct inode *inode, struct file *f)
{
 struct nvme_dev *dev = f->private_data;
 kref_put(&dev->kref, nvme_free_dev);
 return 0;
}
