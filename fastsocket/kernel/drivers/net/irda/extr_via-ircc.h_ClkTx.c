
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int Clk_bit ;
 int ReadReg (int ,int) ;
 int Sdelay (int) ;
 int Tx_bit ;
 int WriteReg (int ,int,int) ;

__attribute__((used)) static void ClkTx(__u16 iobase, __u8 Clk, __u8 Tx)
{
 __u8 bTmp;

 bTmp = ReadReg(iobase, 0x34);
 if (Clk == 0)
  bTmp &= ~Clk_bit;
 else {
  if (Clk == 1)
   bTmp |= Clk_bit;
 }
 WriteReg(iobase, 0x34, bTmp);
 Sdelay(1);
 if (Tx == 0)
  bTmp &= ~Tx_bit;
 else {
  if (Tx == 1)
   bTmp |= Tx_bit;
 }
 WriteReg(iobase, 0x34, bTmp);
}
