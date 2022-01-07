
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_devdata {int eep_lock; } ;


 int EINVAL ;
 int QIB_TWSI_TEMP_DEV ;
 int VALID_TS_RD_REG_MASK ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int qib_twsi_blk_rd (struct qib_devdata*,int ,int,int*,int) ;

__attribute__((used)) static int qib_7220_tempsense_rd(struct qib_devdata *dd, int regnum)
{
 int ret;
 u8 rdata;

 if (regnum > 7) {
  ret = -EINVAL;
  goto bail;
 }


 if (!((1 << regnum) & VALID_TS_RD_REG_MASK)) {
  ret = 0;
  goto bail;
 }

 ret = mutex_lock_interruptible(&dd->eep_lock);
 if (ret)
  goto bail;

 ret = qib_twsi_blk_rd(dd, QIB_TWSI_TEMP_DEV, regnum, &rdata, 1);
 if (!ret)
  ret = rdata;

 mutex_unlock(&dd->eep_lock);







bail:
 return ret;
}
