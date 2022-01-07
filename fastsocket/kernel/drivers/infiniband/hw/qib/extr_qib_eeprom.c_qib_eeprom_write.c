
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_devdata {int eep_lock; } ;


 int eeprom_write_with_enable (struct qib_devdata*,int ,void const*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int qib_eeprom_write(struct qib_devdata *dd, u8 eeprom_offset,
       const void *buff, int len)
{
 int ret;

 ret = mutex_lock_interruptible(&dd->eep_lock);
 if (!ret) {
  ret = eeprom_write_with_enable(dd, eeprom_offset, buff, len);
  mutex_unlock(&dd->eep_lock);
 }

 return ret;
}
