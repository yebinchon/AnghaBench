
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int ActClk (int ,int) ;
 int ClkTx (int ,int ,int) ;
 int Rd_Valid ;
 int ReadReg (int ,int) ;
 int RxBit ;
 int Sdelay (int) ;
 int Tdelay (int) ;
 int Wr_Byte (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static __u8 Rd_Indx(__u16 iobase, __u8 addr, __u8 index)
{
 __u8 data = 0, bTmp, data_bit;
 int i;

 bTmp = addr | (index << 1) | 0;
 ClkTx(iobase, 0, 0);
 Tdelay(2);
 ActClk(iobase, 1);
 udelay(1);
 Wr_Byte(iobase, bTmp);
 Sdelay(1);
 ClkTx(iobase, 0, 0);
 Tdelay(2);
 for (i = 0; i < 10; i++) {
  ActClk(iobase, 1);
  Tdelay(1);
  ActClk(iobase, 0);
  Tdelay(1);
  ClkTx(iobase, 0, 1);
  Tdelay(1);
  bTmp = ReadReg(iobase, 0x34);
  if (!(bTmp & Rd_Valid))
   break;
 }
 if (!(bTmp & Rd_Valid)) {
  for (i = 0; i < 8; i++) {
   ActClk(iobase, 1);
   Tdelay(1);
   ActClk(iobase, 0);
   bTmp = ReadReg(iobase, 0x34);
   data_bit = 1 << i;
   if (bTmp & RxBit)
    data |= data_bit;
   else
    data &= ~data_bit;
   Tdelay(2);
  }
 } else {
  for (i = 0; i < 2; i++) {
   ActClk(iobase, 1);
   Tdelay(1);
   ActClk(iobase, 0);
   Tdelay(2);
  }
  bTmp = ReadReg(iobase, 0x34);
 }
 for (i = 0; i < 1; i++) {
  ActClk(iobase, 1);
  Tdelay(1);
  ActClk(iobase, 0);
  Tdelay(2);
 }
 ClkTx(iobase, 0, 0);
 Tdelay(1);
 for (i = 0; i < 3; i++) {
  ActClk(iobase, 1);
  Tdelay(1);
  ActClk(iobase, 0);
  Tdelay(2);
 }
 return data;
}
