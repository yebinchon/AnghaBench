
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmos_rtc {int dummy; } ;


 unsigned char CMOS_READ (int ) ;
 int CMOS_WRITE (unsigned char,int ) ;
 int RTC_CONTROL ;
 int cmos_checkintr (struct cmos_rtc*,unsigned char) ;
 int hpet_mask_rtc_irq_bit (unsigned char) ;

__attribute__((used)) static void cmos_irq_disable(struct cmos_rtc *cmos, unsigned char mask)
{
 unsigned char rtc_control;

 rtc_control = CMOS_READ(RTC_CONTROL);
 rtc_control &= ~mask;
 CMOS_WRITE(rtc_control, RTC_CONTROL);
 hpet_mask_rtc_irq_bit(mask);

 cmos_checkintr(cmos, rtc_control);
}
