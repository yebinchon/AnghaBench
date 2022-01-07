
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at24_data {int lock; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t at24_eeprom_read (struct at24_data*,char*,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t at24_read(struct at24_data *at24,
  char *buf, loff_t off, size_t count)
{
 ssize_t retval = 0;

 if (unlikely(!count))
  return count;





 mutex_lock(&at24->lock);

 while (count) {
  ssize_t status;

  status = at24_eeprom_read(at24, buf, off, count);
  if (status <= 0) {
   if (retval == 0)
    retval = status;
   break;
  }
  buf += status;
  off += status;
  count -= status;
  retval += status;
 }

 mutex_unlock(&at24->lock);

 return retval;
}
