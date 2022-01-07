
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int irqreturn_t ;


 int BIT_RTC_STATUS_REG_ALARM_M ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_RTC_STATUS_REG ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_UF ;
 int TWL4030_INT_PWR_ISR1 ;
 int TWL4030_MODULE_INT ;
 int local_irq_enable () ;
 int rtc_update_irq (void*,int,unsigned long) ;
 int twl4030_i2c_read_u8 (int ,int*,int ) ;
 int twl4030_rtc_read_u8 (int*,int ) ;
 int twl4030_rtc_write_u8 (int,int ) ;

__attribute__((used)) static irqreturn_t twl4030_rtc_interrupt(int irq, void *rtc)
{
 unsigned long events = 0;
 int ret = IRQ_NONE;
 int res;
 u8 rd_reg;
 res = twl4030_rtc_read_u8(&rd_reg, REG_RTC_STATUS_REG);
 if (res)
  goto out;






 if (rd_reg & BIT_RTC_STATUS_REG_ALARM_M)
  events |= RTC_IRQF | RTC_AF;
 else
  events |= RTC_IRQF | RTC_UF;

 res = twl4030_rtc_write_u8(rd_reg | BIT_RTC_STATUS_REG_ALARM_M,
       REG_RTC_STATUS_REG);
 if (res)
  goto out;
 res = twl4030_i2c_read_u8(TWL4030_MODULE_INT,
   &rd_reg, TWL4030_INT_PWR_ISR1);
 if (res)
  goto out;


 rtc_update_irq(rtc, 1, events);

 ret = IRQ_HANDLED;
out:
 return ret;
}
