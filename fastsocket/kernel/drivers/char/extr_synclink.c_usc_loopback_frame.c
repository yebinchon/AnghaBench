
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long mode; } ;
struct mgsl_struct {TYPE_1__ params; scalar_t__ io_base; } ;


 int BIT1 ;
 int BIT3 ;
 int BIT4 ;
 int BIT8 ;
 int CCR ;
 scalar_t__ DATAREG ;
 int ENABLE_UNCONDITIONAL ;
 unsigned long MGSL_MODE_HDLC ;
 int RCSR ;
 int RTCmd_PurgeRxFifo ;
 int RTCmd_PurgeTxFifo ;
 int TC0R ;
 int TCLR ;
 int TCmd_SendFrame ;
 int TXSTATUS_ALL ;
 int outw (int ,scalar_t__) ;
 int usc_DisableMasterIrqBit (struct mgsl_struct*) ;
 int usc_EnableMasterIrqBit (struct mgsl_struct*) ;
 int usc_EnableReceiver (struct mgsl_struct*,int ) ;
 int usc_EnableTransmitter (struct mgsl_struct*,int ) ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutReg (struct mgsl_struct*,int ,int) ;
 int usc_RTCmd (struct mgsl_struct*,int ) ;
 int usc_TCmd (struct mgsl_struct*,int ) ;
 int usc_UnlatchTxstatusBits (struct mgsl_struct*,int ) ;
 int usc_enable_loopback (struct mgsl_struct*,int) ;
 int usc_set_sdlc_mode (struct mgsl_struct*) ;

__attribute__((used)) static void usc_loopback_frame( struct mgsl_struct *info )
{
 int i;
 unsigned long oldmode = info->params.mode;

 info->params.mode = MGSL_MODE_HDLC;

 usc_DisableMasterIrqBit( info );

 usc_set_sdlc_mode( info );
 usc_enable_loopback( info, 1 );


 usc_OutReg( info, TC0R, 0 );
 usc_OutReg( info, CCR, 0x0100 );


 usc_RTCmd( info, RTCmd_PurgeRxFifo );
 usc_EnableReceiver(info,ENABLE_UNCONDITIONAL);




 usc_OutReg( info, TCLR, 2 );
 usc_RTCmd( info, RTCmd_PurgeTxFifo );


 usc_UnlatchTxstatusBits(info,TXSTATUS_ALL);
 outw(0,info->io_base + DATAREG);


 usc_TCmd( info, TCmd_SendFrame );
 usc_EnableTransmitter(info,ENABLE_UNCONDITIONAL);


 for (i=0 ; i<1000 ; i++)
  if (usc_InReg( info, RCSR ) & (BIT8 + BIT4 + BIT3 + BIT1))
   break;


 usc_enable_loopback(info, 0);

 usc_EnableMasterIrqBit(info);

 info->params.mode = oldmode;

}
