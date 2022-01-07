
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EE76_CMD_LEN ;
 int EE_READ ;
 unsigned int inl (unsigned int) ;
 int outl (unsigned int,unsigned int) ;
 int udelay (int) ;
 int v_EepromClock76 (unsigned int,unsigned int) ;
 int v_EepromSendCommand76 (unsigned int,int,int ) ;

void v_EepromCs76Read(unsigned int dw_Address, unsigned short w_offset, unsigned short *pw_Value)
{

        char c_BitPos = 0;

 unsigned int dw_RegisterValue = 0;

 unsigned int dw_RegisterValueRead = 0;







 v_EepromSendCommand76(dw_Address, (EE_READ << 4) | (w_offset / 2),
  EE76_CMD_LEN);







 dw_RegisterValue = (((w_offset / 2) & 0x1) << 2) | 0x2;







 *pw_Value = 0;







 for (c_BitPos = 0; c_BitPos < 16; c_BitPos++)
 {







  v_EepromClock76(dw_Address, dw_RegisterValue);







  dw_RegisterValueRead = inl(dw_Address);







  udelay(100);







  if (dw_RegisterValueRead & 0x8)
  {







   *pw_Value = (*pw_Value << 1) | 0x1;

  }

  else
  {







   *pw_Value = (*pw_Value << 1);

  }

 }







 dw_RegisterValue = 0x0;







 outl(dw_RegisterValue, dw_Address);







 udelay(100);

}
