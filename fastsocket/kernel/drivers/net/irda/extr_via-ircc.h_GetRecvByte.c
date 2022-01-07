
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_ircc_cb {int RxLastCount; } ;
typedef int __u8 ;
typedef int __u16 ;


 int RX_P_H ;
 int RX_P_L ;
 int ReadReg (int,int ) ;

__attribute__((used)) static __u16 GetRecvByte(__u16 iobase, struct via_ircc_cb * self)
{
 __u8 low, high;
 __u16 wTmp, wTmp1, ret;

 low = ReadReg(iobase, RX_P_L);
 high = ReadReg(iobase, RX_P_H);
 wTmp1 = high;
 wTmp = (wTmp1 << 8) | low;


 if (wTmp >= self->RxLastCount)
  ret = wTmp - self->RxLastCount;
 else
  ret = (0x8000 - self->RxLastCount) + wTmp;
 self->RxLastCount = wTmp;
 return ret;
}
