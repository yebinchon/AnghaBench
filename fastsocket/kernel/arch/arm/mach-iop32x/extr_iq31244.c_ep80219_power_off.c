
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IOP3XX_ICR1 ;
 int* IOP3XX_IDBR1 ;
 int mdelay (int) ;

void ep80219_power_off(void)
{



 *IOP3XX_IDBR1 = 0x60;
 *IOP3XX_ICR1 = 0xE9;
 mdelay(1);




 *IOP3XX_IDBR1 = 0x0F;
 *IOP3XX_ICR1 = 0xE8;
 mdelay(1);





 *IOP3XX_IDBR1 = 0x03;
 *IOP3XX_ICR1 = 0xE8;
 mdelay(1);




 *IOP3XX_IDBR1 = 0x00;
 *IOP3XX_ICR1 = 0xEA;

 while (1)
  ;
}
