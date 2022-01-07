
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int RTC_AIE ;
 int RTC_IS_OPEN ;
 int RTC_PIE ;
 int RTC_UIE ;
 int gen_clear_rtc_irq_bit (int) ;
 int gen_rtc_status ;

__attribute__((used)) static int gen_rtc_release(struct inode *inode, struct file *file)
{





 gen_clear_rtc_irq_bit(RTC_PIE|RTC_AIE|RTC_UIE);

 gen_rtc_status &= ~RTC_IS_OPEN;
 return 0;
}
