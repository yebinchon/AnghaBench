
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CMOS_READ (int ) ;
 int CMOS_WRITE (unsigned char,int ) ;
 int DS_B1_XCTRL4A ;
 int DS_B1_XCTRL4B ;
 unsigned char DS_REGA_DV0 ;
 unsigned char DS_REGA_DV1 ;
 unsigned char DS_REGA_DV2 ;
 unsigned char DS_XCTRL4A_IFS ;
 unsigned char DS_XCTRL4A_PAB ;
 unsigned char DS_XCTRL4B_ABE ;
 unsigned char DS_XCTRL4B_KFE ;
 int MACEISA_RTC_IRQ ;
 int RTC_REG_A ;
 int disable_irq (int ) ;
 int wbflush () ;

__attribute__((used)) static void ip32_machine_power_off(void)
{
 unsigned char reg_a, xctrl_a, xctrl_b;

 disable_irq(MACEISA_RTC_IRQ);
 reg_a = CMOS_READ(RTC_REG_A);


 reg_a &= ~DS_REGA_DV2;
 reg_a |= DS_REGA_DV1;

 CMOS_WRITE(reg_a | DS_REGA_DV0, RTC_REG_A);
 wbflush();
 xctrl_b = CMOS_READ(DS_B1_XCTRL4B)
     | DS_XCTRL4B_ABE | DS_XCTRL4B_KFE;
 CMOS_WRITE(xctrl_b, DS_B1_XCTRL4B);
 xctrl_a = CMOS_READ(DS_B1_XCTRL4A) & ~DS_XCTRL4A_IFS;
 CMOS_WRITE(xctrl_a, DS_B1_XCTRL4A);
 wbflush();

 CMOS_WRITE(xctrl_a | DS_XCTRL4A_PAB, DS_B1_XCTRL4A);
 CMOS_WRITE(reg_a, RTC_REG_A);
 wbflush();
 while (1);
}
