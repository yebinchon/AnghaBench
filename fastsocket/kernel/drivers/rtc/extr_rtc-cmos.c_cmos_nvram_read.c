
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {scalar_t__ size; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int CMOS_READ (scalar_t__) ;
 int EINVAL ;
 scalar_t__ NVRAM_OFFSET ;
 scalar_t__ can_bank2 ;
 int cmos_read_bank2 (scalar_t__) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t
cmos_nvram_read(struct file *filp, struct kobject *kobj,
  struct bin_attribute *attr,
  char *buf, loff_t off, size_t count)
{
 int retval;

 if (unlikely(off >= attr->size))
  return 0;
 if (unlikely(off < 0))
  return -EINVAL;
 if ((off + count) > attr->size)
  count = attr->size - off;

 off += NVRAM_OFFSET;
 spin_lock_irq(&rtc_lock);
 for (retval = 0; count; count--, off++, retval++) {
  if (off < 128)
   *buf++ = CMOS_READ(off);
  else if (can_bank2)
   *buf++ = cmos_read_bank2(off);
  else
   break;
 }
 spin_unlock_irq(&rtc_lock);

 return retval;
}
