
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int I_CF_H_1 ;
 int I_CF_L_1 ;
 int ReadReg (int ,int ) ;
 int WriteReg (int ,int ,int) ;

__attribute__((used)) static void SetPulseWidth(__u16 iobase, __u8 width)
{
 __u8 temp, temp1, temp2;

 temp = (ReadReg(iobase, I_CF_L_1) & 0x1f);
 temp1 = (ReadReg(iobase, I_CF_H_1) & 0xfc);
 temp2 = (width & 0x07) << 5;
 temp |= temp2;
 temp2 = (width & 0x18) >> 3;
 temp1 |= temp2;
 WriteReg(iobase, I_CF_L_1, temp);
 WriteReg(iobase, I_CF_H_1, temp1);
}
