
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int ActClk (int ,int) ;
 int ClkTx (int ,int ,int) ;
 int Sdelay (int) ;
 int Tdelay (int) ;

__attribute__((used)) static void Wr_Byte(__u16 iobase, __u8 data)
{
 __u8 bData = data;

 int i;

 ClkTx(iobase, 0, 1);

 Tdelay(2);
 ActClk(iobase, 1);
 Tdelay(1);

 for (i = 0; i < 8; i++) {

  if ((bData >> i) & 0x01) {
   ClkTx(iobase, 0, 1);
  } else {
   ClkTx(iobase, 0, 0);
  }
  Tdelay(2);
  Sdelay(1);
  ActClk(iobase, 1);
  Tdelay(1);
 }
}
