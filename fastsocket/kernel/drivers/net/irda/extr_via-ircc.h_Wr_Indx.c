
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int ActClk (int ,int) ;
 int ClkTx (int ,int ,int ) ;
 int Tdelay (int) ;
 int Wr_Byte (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void Wr_Indx(__u16 iobase, __u8 addr, __u8 index, __u8 data)
{
 int i;
 __u8 bTmp;

 ClkTx(iobase, 0, 0);
 udelay(2);
 ActClk(iobase, 1);
 udelay(1);
 bTmp = addr | (index << 1) | 1;
 Wr_Byte(iobase, bTmp);
 Wr_Byte(iobase, data);
 for (i = 0; i < 2; i++) {
  ClkTx(iobase, 0, 0);
  Tdelay(2);
  ActClk(iobase, 1);
  Tdelay(1);
 }
 ActClk(iobase, 0);
}
