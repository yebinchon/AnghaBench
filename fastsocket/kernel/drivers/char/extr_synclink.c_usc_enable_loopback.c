
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int clock_speed; } ;
struct mgsl_struct {scalar_t__ bus_type; int loopback_bits; scalar_t__ io_base; TYPE_1__ params; } ;


 int BIT0 ;
 int BIT1 ;
 int BIT6 ;
 int BIT7 ;
 scalar_t__ CCAR ;
 int CMCR ;
 int HCR ;
 int IOCR ;
 scalar_t__ MGSL_BUS_TYPE_PCI ;
 int TC0R ;
 int outw (int,scalar_t__) ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutReg (struct mgsl_struct*,int ,int) ;

__attribute__((used)) static void usc_enable_loopback(struct mgsl_struct *info, int enable)
{
 if (enable) {

  usc_OutReg(info,IOCR,usc_InReg(info,IOCR) | (BIT7+BIT6));
  usc_OutReg( info, CMCR, 0x0f64 );



  if (info->params.clock_speed) {
   if (info->bus_type == MGSL_BUS_TYPE_PCI)
    usc_OutReg(info, TC0R, (u16)((11059200/info->params.clock_speed)-1));
   else
    usc_OutReg(info, TC0R, (u16)((14745600/info->params.clock_speed)-1));
  } else
   usc_OutReg(info, TC0R, (u16)8);



  usc_OutReg( info, HCR, (u16)((usc_InReg( info, HCR ) & ~BIT1) | BIT0) );


  usc_OutReg(info, IOCR, (u16)((usc_InReg(info, IOCR) & 0xfff8) | 0x0004));


  info->loopback_bits = 0x300;
  outw( 0x0300, info->io_base + CCAR );
 } else {

  usc_OutReg(info,IOCR,usc_InReg(info,IOCR) & ~(BIT7+BIT6));


  info->loopback_bits = 0;
  outw( 0,info->io_base + CCAR );
 }

}
