
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int ActClk (int ,int) ;
 int ClkTx (int ,int ,int ) ;
 int Tdelay (int) ;

__attribute__((used)) static void ResetDongle(__u16 iobase)
{
 int i;
 ClkTx(iobase, 0, 0);
 Tdelay(1);
 for (i = 0; i < 30; i++) {
  ActClk(iobase, 1);
  Tdelay(1);
  ActClk(iobase, 0);
  Tdelay(1);
 }
 ActClk(iobase, 0);
}
