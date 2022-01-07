
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outl (unsigned int,unsigned int) ;
 int udelay (int) ;

void v_EepromClock76(unsigned int dw_Address, unsigned int dw_RegisterValue)
{







 outl(dw_RegisterValue & 0x6, dw_Address);







 udelay(100);







 outl(dw_RegisterValue | 0x1, dw_Address);







 udelay(100);

}
