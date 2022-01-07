
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int irqreturn_t ;


 int CMOS_READ (int ) ;
 int CMOS_WRITE (int,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AIE ;
 int RTC_CONTROL ;
 int RTC_INTR_FLAGS ;
 int RTC_IRQF ;
 int RTC_IRQMASK ;
 int hpet_mask_rtc_irq_bit (int) ;
 scalar_t__ is_hpet_enabled () ;
 scalar_t__ is_intr (int) ;
 int rtc_lock ;
 int rtc_update_irq (void*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t cmos_interrupt(int irq, void *p)
{
 u8 irqstat;
 u8 rtc_control;

 spin_lock(&rtc_lock);
 irqstat = CMOS_READ(RTC_INTR_FLAGS);
 rtc_control = CMOS_READ(RTC_CONTROL);
 if (is_hpet_enabled())
  irqstat = (unsigned long)irq & 0xF0;
 irqstat &= (rtc_control & RTC_IRQMASK) | RTC_IRQF;





 if (irqstat & RTC_AIE) {
  rtc_control &= ~RTC_AIE;
  CMOS_WRITE(rtc_control, RTC_CONTROL);
  hpet_mask_rtc_irq_bit(RTC_AIE);

  CMOS_READ(RTC_INTR_FLAGS);
 }
 spin_unlock(&rtc_lock);

 if (is_intr(irqstat)) {
  rtc_update_irq(p, 1, irqstat);
  return IRQ_HANDLED;
 } else
  return IRQ_NONE;
}
