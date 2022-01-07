
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {int loopmode_insert_requested; int cmr_value; } ;


 int BIT13 ;
 int CMR ;
 int RICR ;
 int RXSTATUS_ABORT_RECEIVED ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutReg (struct mgsl_struct*,int ,int) ;

__attribute__((used)) static void usc_loopmode_insert_request( struct mgsl_struct * info )
{
  info->loopmode_insert_requested = 1;




  usc_OutReg( info, RICR,
  (usc_InReg( info, RICR ) | RXSTATUS_ABORT_RECEIVED ) );


 info->cmr_value |= BIT13;
  usc_OutReg(info, CMR, info->cmr_value);
}
