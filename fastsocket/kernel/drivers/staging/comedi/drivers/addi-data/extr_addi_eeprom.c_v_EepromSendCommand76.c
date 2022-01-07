
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outl (unsigned int,unsigned int) ;
 int udelay (int) ;
 int v_EepromClock76 (unsigned int,unsigned int) ;

void v_EepromSendCommand76(unsigned int dw_Address, unsigned int dw_EepromCommand,
 unsigned char b_DataLengthInBits)
{

 char c_BitPos = 0;

 unsigned int dw_RegisterValue = 0;







 dw_RegisterValue = 0x2;







 outl(dw_RegisterValue, dw_Address);







 udelay(100);







 for (c_BitPos = (b_DataLengthInBits - 1); c_BitPos >= 0; c_BitPos--)
 {







  if (dw_EepromCommand & (1 << c_BitPos))
  {







   dw_RegisterValue = dw_RegisterValue | 0x4;

  }

  else
  {







   dw_RegisterValue = dw_RegisterValue & 0x3;

  }







  outl(dw_RegisterValue, dw_Address);







  udelay(100);







  v_EepromClock76(dw_Address, dw_RegisterValue);

 }

}
