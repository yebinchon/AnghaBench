
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mgsl_struct {scalar_t__ bus_type; scalar_t__ io_base; scalar_t__ usc_idle_mode; scalar_t__ loopback_bits; scalar_t__ mbre_bit; int misc_ctrl_value; scalar_t__ lcr_base; } ;


 int BIT30 ;
 int BUS_DESCRIPTOR (int,int,int,int ,int,int ,int ,int) ;
 scalar_t__ CCAR ;
 int IOCR ;
 scalar_t__ MGSL_BUS_TYPE_PCI ;
 int PCR ;
 int RTCmd_SelectLittleEndian ;
 scalar_t__ SDPIN ;
 int outb (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int usc_OutReg (struct mgsl_struct*,int ,int) ;
 int usc_RTCmd (struct mgsl_struct*,int ) ;

__attribute__((used)) static void usc_reset( struct mgsl_struct *info )
{
 if ( info->bus_type == MGSL_BUS_TYPE_PCI ) {
  int i;
  u32 readval;




  volatile u32 *MiscCtrl = (u32 *)(info->lcr_base + 0x50);
  u32 *LCR0BRDR = (u32 *)(info->lcr_base + 0x28);

  info->misc_ctrl_value |= BIT30;
  *MiscCtrl = info->misc_ctrl_value;






  for(i=0;i<10;i++)
   readval = *MiscCtrl;

  info->misc_ctrl_value &= ~BIT30;
  *MiscCtrl = info->misc_ctrl_value;

  *LCR0BRDR = BUS_DESCRIPTOR(
   1,
   2,
   2,
   0,
   4,
   0,
   0,
   5
   );
 } else {

  outb( 0,info->io_base + 8 );
 }

 info->mbre_bit = 0;
 info->loopback_bits = 0;
 info->usc_idle_mode = 0;
 outw( 0x000c,info->io_base + SDPIN );


 outw( 0,info->io_base );
 outw( 0,info->io_base + CCAR );


 usc_RTCmd( info, RTCmd_SelectLittleEndian );
 usc_OutReg( info, PCR, 0xf0f5 );
 usc_OutReg( info, IOCR, 0x0004 );

}
