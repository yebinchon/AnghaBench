
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ f_pos; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;
 scalar_t__ HPEE_MAX_LENGTH ;

__attribute__((used)) static loff_t eisa_eeprom_llseek(struct file *file, loff_t offset, int origin )
{
 switch (origin) {
   case 0:

  break;
   case 1:
  offset += file->f_pos;
  break;
   case 2:
  offset += HPEE_MAX_LENGTH;
  break;
 }
 return (offset >= 0 && offset < HPEE_MAX_LENGTH) ? (file->f_pos = offset) : -EINVAL;
}
