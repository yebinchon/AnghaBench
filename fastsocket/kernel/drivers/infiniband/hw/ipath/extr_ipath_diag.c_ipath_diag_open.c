
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {int ipath_flags; TYPE_1__* pcidev; int ipath_kregbase; } ;
struct inode {int dummy; } ;
struct file {struct ipath_devdata* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int ENODEV ;
 int IPATH_DIAG_MINOR_BASE ;
 int IPATH_PRESENT ;
 scalar_t__ diag_set_link ;
 int iminor (struct inode*) ;
 int ipath_diag_inuse ;
 int ipath_expose_reset (int *) ;
 struct ipath_devdata* ipath_lookup (int) ;
 int ipath_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipath_diag_open(struct inode *in, struct file *fp)
{
 int unit = iminor(in) - IPATH_DIAG_MINOR_BASE;
 struct ipath_devdata *dd;
 int ret;

 mutex_lock(&ipath_mutex);

 if (ipath_diag_inuse) {
  ret = -EBUSY;
  goto bail;
 }

 dd = ipath_lookup(unit);

 if (dd == ((void*)0) || !(dd->ipath_flags & IPATH_PRESENT) ||
     !dd->ipath_kregbase) {
  ret = -ENODEV;
  goto bail;
 }

 fp->private_data = dd;
 ipath_diag_inuse = -2;
 diag_set_link = 0;
 ret = 0;



 ipath_expose_reset(&dd->pcidev->dev);

bail:
 mutex_unlock(&ipath_mutex);

 return ret;
}
