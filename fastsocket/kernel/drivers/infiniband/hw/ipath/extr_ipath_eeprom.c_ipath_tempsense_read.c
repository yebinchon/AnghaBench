
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_devdata {int ipath_eep_lock; } ;


 int EINVAL ;
 int VALID_TS_RD_REG_MASK ;
 int ipath_tempsense_internal_read (struct ipath_devdata*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int ipath_tempsense_read(struct ipath_devdata *dd, u8 regnum)
{
 int ret;

 if (regnum > 7)
  return -EINVAL;


 if (!((1 << regnum) & VALID_TS_RD_REG_MASK))
  return 0;

 ret = mutex_lock_interruptible(&dd->ipath_eep_lock);
 if (!ret) {
  ret = ipath_tempsense_internal_read(dd, regnum);
  mutex_unlock(&dd->ipath_eep_lock);
 }







 return ret;
}
