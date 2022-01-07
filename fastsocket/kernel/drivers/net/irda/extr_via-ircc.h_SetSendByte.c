
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;
typedef int __u16 ;


 int TX_C_H ;
 int TX_C_L ;
 int WriteReg (int ,int ,int) ;

__attribute__((used)) static void SetSendByte(__u16 iobase, __u32 count)
{
 __u32 low, high;

 if ((count & 0xf000) == 0) {
  low = count & 0x00ff;
  high = (count & 0x0f00) >> 8;
  WriteReg(iobase, TX_C_L, low);
  WriteReg(iobase, TX_C_H, high);
 }
}
