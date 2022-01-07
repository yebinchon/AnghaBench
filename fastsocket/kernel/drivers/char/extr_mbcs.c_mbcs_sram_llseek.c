
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ f_pos; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;
 scalar_t__ MBCS_SRAM_SIZE ;




__attribute__((used)) static loff_t mbcs_sram_llseek(struct file * filp, loff_t off, int whence)
{
 loff_t newpos;

 switch (whence) {
 case 128:
  newpos = off;
  break;

 case 130:
  newpos = filp->f_pos + off;
  break;

 case 129:
  newpos = MBCS_SRAM_SIZE + off;
  break;

 default:
  return -EINVAL;
 }

 if (newpos < 0)
  return -EINVAL;

 filp->f_pos = newpos;

 return newpos;
}
