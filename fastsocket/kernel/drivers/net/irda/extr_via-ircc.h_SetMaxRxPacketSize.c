
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int I_CF_H_2 ;
 int I_CF_L_2 ;
 int WriteReg (int,int ,int) ;

__attribute__((used)) static void SetMaxRxPacketSize(__u16 iobase, __u16 size)
{
 __u16 low, high;
 if ((size & 0xe000) == 0) {
  low = size & 0x00ff;
  high = (size & 0x1f00) >> 8;
  WriteReg(iobase, I_CF_L_2, low);
  WriteReg(iobase, I_CF_H_2, high);

 }

}
