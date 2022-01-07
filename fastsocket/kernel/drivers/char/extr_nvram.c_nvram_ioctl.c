
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int ENOTTY ;
 int NVRAM_BYTES ;


 int __nvram_set_checksum () ;
 int __nvram_write_byte (int ,int) ;
 int capable (int ) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int nvram_ioctl(struct inode *inode, struct file *file,
     unsigned int cmd, unsigned long arg)
{
 int i;

 switch (cmd) {

 case 129:

  if (!capable(CAP_SYS_ADMIN))
   return -EACCES;

  spin_lock_irq(&rtc_lock);

  for (i = 0; i < NVRAM_BYTES; ++i)
   __nvram_write_byte(0, i);
  __nvram_set_checksum();

  spin_unlock_irq(&rtc_lock);
  return 0;

 case 128:


  if (!capable(CAP_SYS_ADMIN))
   return -EACCES;

  spin_lock_irq(&rtc_lock);
  __nvram_set_checksum();
  spin_unlock_irq(&rtc_lock);
  return 0;

 default:
  return -ENOTTY;
 }
}
