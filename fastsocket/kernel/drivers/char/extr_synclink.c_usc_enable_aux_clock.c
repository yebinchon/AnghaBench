
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct mgsl_struct {scalar_t__ bus_type; } ;


 int BIT0 ;
 int BIT1 ;
 int HCR ;
 int IOCR ;
 scalar_t__ MGSL_BUS_TYPE_PCI ;
 int TC0R ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutReg (struct mgsl_struct*,int ,scalar_t__) ;

__attribute__((used)) static void usc_enable_aux_clock( struct mgsl_struct *info, u32 data_rate )
{
 u32 XtalSpeed;
 u16 Tc;

 if ( data_rate ) {
  if ( info->bus_type == MGSL_BUS_TYPE_PCI )
   XtalSpeed = 11059200;
  else
   XtalSpeed = 14745600;
  Tc = (u16)(XtalSpeed/data_rate);
  if ( !(((XtalSpeed % data_rate) * 2) / data_rate) )
   Tc--;


  usc_OutReg( info, TC0R, Tc );







  usc_OutReg( info, HCR, (u16)((usc_InReg( info, HCR ) & ~BIT1) | BIT0) );


  usc_OutReg( info, IOCR, (u16)((usc_InReg(info, IOCR) & 0xfff8) | 0x0004) );
 } else {

  usc_OutReg( info, HCR, (u16)(usc_InReg( info, HCR ) & ~BIT0) );
 }

}
