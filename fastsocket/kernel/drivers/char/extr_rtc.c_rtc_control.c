
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_task_t ;


 int EINVAL ;
 int EIO ;
 int ENXIO ;
 unsigned int RTC_IRQP_SET ;
 unsigned int RTC_PIE_OFF ;
 unsigned int RTC_PIE_ON ;
 int * rtc_callback ;
 int rtc_do_ioctl (unsigned int,unsigned long,int) ;
 int rtc_task_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int rtc_control(rtc_task_t *task, unsigned int cmd, unsigned long arg)
{

 return -EIO;
}
