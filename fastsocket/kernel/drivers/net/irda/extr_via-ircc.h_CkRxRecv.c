
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_ircc_cb {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int RX_C_H ;
 int RX_C_L ;
 int ReadReg (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int CkRxRecv(__u16 iobase, struct via_ircc_cb *self)
{
 __u8 low, high;
 __u16 wTmp = 0, wTmp1 = 0, wTmp_new = 0;

 low = ReadReg(iobase, RX_C_L);
 high = ReadReg(iobase, RX_C_H);
 wTmp1 = high;
 wTmp = (wTmp1 << 8) | low;
 udelay(10);
 low = ReadReg(iobase, RX_C_L);
 high = ReadReg(iobase, RX_C_H);
 wTmp1 = high;
 wTmp_new = (wTmp1 << 8) | low;
 if (wTmp_new != wTmp)
  return 1;
 else
  return 0;

}
