
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IOP3XX_ICR0 ;
 int* IOP3XX_IDBR0 ;
 int local_irq_disable () ;
 int mdelay (int) ;

__attribute__((used)) static void n2100_power_off(void)
{
 local_irq_disable();


 *IOP3XX_IDBR0 = 0xc0;
 *IOP3XX_ICR0 = 0xe9;
 mdelay(1);


 *IOP3XX_IDBR0 = 0x08;
 *IOP3XX_ICR0 = 0xe8;
 mdelay(1);


 *IOP3XX_IDBR0 = 0x01;
 *IOP3XX_ICR0 = 0xea;

 while (1)
  ;
}
