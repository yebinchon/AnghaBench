
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_devdata {int ipath_eep_lock; } ;


 int ipath_eeprom_internal_read (struct ipath_devdata*,int ,void*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int ipath_eeprom_read(struct ipath_devdata *dd, u8 eeprom_offset,
   void *buff, int len)
{
 int ret;

 ret = mutex_lock_interruptible(&dd->ipath_eep_lock);
 if (!ret) {
  ret = ipath_eeprom_internal_read(dd, eeprom_offset, buff, len);
  mutex_unlock(&dd->ipath_eep_lock);
 }

 return ret;
}
