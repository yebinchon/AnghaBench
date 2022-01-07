
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int SLMP_INFO ;


 int RXS ;
 int TMC ;
 int TXS ;
 int read_reg (int *,int ) ;
 int write_reg (int *,int ,unsigned char) ;

__attribute__((used)) static void set_rate( SLMP_INFO *info, u32 data_rate )
{
        u32 TMCValue;
        unsigned char BRValue;
 u32 Divisor=0;



 if (data_rate != 0) {
  Divisor = 14745600/data_rate;
  if (!Divisor)
   Divisor = 1;

  TMCValue = Divisor;

  BRValue = 0;
  if (TMCValue != 1 && TMCValue != 2) {




   BRValue = 1;
   TMCValue >>= 1;
  }




  for(; TMCValue > 256 && BRValue < 10; BRValue++)
   TMCValue >>= 1;

  write_reg(info, TXS,
   (unsigned char)((read_reg(info, TXS) & 0xf0) | BRValue));
  write_reg(info, RXS,
   (unsigned char)((read_reg(info, RXS) & 0xf0) | BRValue));
  write_reg(info, TMC, (unsigned char)TMCValue);
 }
 else {
  write_reg(info, TXS,0);
  write_reg(info, RXS,0);
  write_reg(info, TMC, 0);
 }
}
