
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int dummy; } ;


 int DmaCmd_ResetTxChannel ;
 int RTCmd_PurgeTxFifo ;
 int usc_DmaCmd (struct mgsl_struct*,int ) ;
 int usc_RTCmd (struct mgsl_struct*,int ) ;
 int usc_loopmode_send_done (struct mgsl_struct*) ;

__attribute__((used)) static void usc_loopmode_cancel_transmit( struct mgsl_struct * info )
{

  usc_RTCmd( info, RTCmd_PurgeTxFifo );
  usc_DmaCmd( info, DmaCmd_ResetTxChannel );
   usc_loopmode_send_done( info );
}
