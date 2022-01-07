
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int I_CF_L_1 ;
 int ReadReg (int ,int ) ;
 int WriteReg (int ,int ,int) ;

__attribute__((used)) static void SetSendPreambleCount(__u16 iobase, __u8 count)
{
 __u8 temp;

 temp = ReadReg(iobase, I_CF_L_1) & 0xe0;
 temp |= count;
 WriteReg(iobase, I_CF_L_1, temp);

}
