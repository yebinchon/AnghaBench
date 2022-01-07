
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int Clk_bit ;
 int ReadReg (int ,int) ;
 int WriteReg (int ,int,int) ;

__attribute__((used)) static void ActClk(__u16 iobase, __u8 value)
{
 __u8 bTmp;
 bTmp = ReadReg(iobase, 0x34);
 if (value)
  WriteReg(iobase, 0x34, bTmp | Clk_bit);
 else
  WriteReg(iobase, 0x34, bTmp & ~Clk_bit);
}
