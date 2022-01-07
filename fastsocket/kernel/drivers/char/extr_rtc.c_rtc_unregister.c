
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_task_t ;


 unsigned char CMOS_READ (int ) ;
 int CMOS_WRITE (unsigned char,int ) ;
 int EIO ;
 int ENXIO ;
 unsigned char RTC_AIE ;
 int RTC_CONTROL ;
 int RTC_INTR_FLAGS ;
 int RTC_IS_OPEN ;
 unsigned char RTC_PIE ;
 int RTC_TIMER_ON ;
 unsigned char RTC_UIE ;
 int del_timer (int *) ;
 int hpet_mask_rtc_irq_bit (unsigned char) ;
 int * rtc_callback ;
 int rtc_irq_timer ;
 int rtc_lock ;
 int rtc_status ;
 int rtc_task_lock ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

int rtc_unregister(rtc_task_t *task)
{

 return -EIO;
}
