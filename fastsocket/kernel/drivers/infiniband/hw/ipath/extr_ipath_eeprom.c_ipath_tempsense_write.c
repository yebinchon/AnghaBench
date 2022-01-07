
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_devdata {int ipath_eep_lock; } ;


 int EINVAL ;
 int VALID_TS_WR_REG_MASK ;
 int ipath_tempsense_internal_write (struct ipath_devdata*,int,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int ipath_tempsense_write(struct ipath_devdata *dd, u8 regnum, u8 data)
{
 int ret;

 if (regnum > 15 || !((1 << regnum) & VALID_TS_WR_REG_MASK))
  return -EINVAL;

 ret = mutex_lock_interruptible(&dd->ipath_eep_lock);
 if (!ret) {
  ret = ipath_tempsense_internal_write(dd, regnum, data);
  mutex_unlock(&dd->ipath_eep_lock);
 }







 return ret;
}
