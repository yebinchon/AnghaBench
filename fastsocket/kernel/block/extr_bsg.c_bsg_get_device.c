
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct bsg_device {int dummy; } ;
struct bsg_class_device {int ref; int queue; } ;


 int ENODEV ;
 struct bsg_device* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct bsg_device*) ;
 struct bsg_device* __bsg_get_device (int ,int ) ;
 struct bsg_device* bsg_add_device (struct inode*,int ,struct file*) ;
 int bsg_kref_release_function ;
 int bsg_minor_idr ;
 int bsg_mutex ;
 struct bsg_class_device* idr_find (int *,int ) ;
 int iminor (struct inode*) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct bsg_device *bsg_get_device(struct inode *inode, struct file *file)
{
 struct bsg_device *bd;
 struct bsg_class_device *bcd;




 mutex_lock(&bsg_mutex);
 bcd = idr_find(&bsg_minor_idr, iminor(inode));
 if (bcd)
  kref_get(&bcd->ref);
 mutex_unlock(&bsg_mutex);

 if (!bcd)
  return ERR_PTR(-ENODEV);

 bd = __bsg_get_device(iminor(inode), bcd->queue);
 if (bd)
  return bd;

 bd = bsg_add_device(inode, bcd->queue, file);
 if (IS_ERR(bd))
  kref_put(&bcd->ref, bsg_kref_release_function);

 return bd;
}
