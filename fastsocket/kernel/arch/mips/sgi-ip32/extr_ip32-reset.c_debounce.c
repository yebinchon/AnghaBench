
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;


 unsigned char CMOS_READ (int ) ;
 int CMOS_WRITE (unsigned char,int ) ;
 int DS_B1_XCTRL4A ;
 unsigned char DS_REGA_DV0 ;
 unsigned char DS_XCTRL4A_IFS ;
 int MACEISA_RTC_IRQ ;
 int RTC_INTR_FLAGS ;
 unsigned char RTC_IRQF ;
 int RTC_REG_A ;
 int add_timer (TYPE_1__*) ;
 TYPE_1__ debounce_timer ;
 int enable_irq (int ) ;
 scalar_t__ has_panicked ;
 int ip32_machine_restart (int *) ;
 scalar_t__ jiffies ;
 int wbflush () ;

__attribute__((used)) static void debounce(unsigned long data)
{
 unsigned char reg_a, reg_c, xctrl_a;

 reg_c = CMOS_READ(RTC_INTR_FLAGS);
 reg_a = CMOS_READ(RTC_REG_A);
 CMOS_WRITE(reg_a | DS_REGA_DV0, RTC_REG_A);
 wbflush();
 xctrl_a = CMOS_READ(DS_B1_XCTRL4A);
 if ((xctrl_a & DS_XCTRL4A_IFS) || (reg_c & RTC_IRQF )) {

  debounce_timer.expires = jiffies + 50;
  add_timer(&debounce_timer);


  CMOS_WRITE(xctrl_a & ~DS_XCTRL4A_IFS, DS_B1_XCTRL4A);
  CMOS_WRITE(reg_a & ~DS_REGA_DV0, RTC_REG_A);
  return;
 }
 CMOS_WRITE(reg_a & ~DS_REGA_DV0, RTC_REG_A);

 if (has_panicked)
  ip32_machine_restart(((void*)0));

 enable_irq(MACEISA_RTC_IRQ);
}
