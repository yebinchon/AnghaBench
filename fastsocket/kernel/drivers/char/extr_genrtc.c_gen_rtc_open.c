
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int RTC_IS_OPEN ;
 scalar_t__ gen_rtc_irq_data ;
 int gen_rtc_status ;
 scalar_t__ irq_active ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int gen_rtc_open(struct inode *inode, struct file *file)
{
 lock_kernel();
 if (gen_rtc_status & RTC_IS_OPEN) {
  unlock_kernel();
  return -EBUSY;
 }

 gen_rtc_status |= RTC_IS_OPEN;
 gen_rtc_irq_data = 0;
 irq_active = 0;
 unlock_kernel();

 return 0;
}
