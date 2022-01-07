
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ loopback; int clock_speed; } ;
struct mgsl_struct {scalar_t__ bus_type; TYPE_1__ params; } ;


 int BIT12 ;
 int BIT13 ;
 scalar_t__ MGSL_BUS_TYPE_ISA ;
 int PCR ;
 int usc_InReg (struct mgsl_struct*,int ) ;
 int usc_OutReg (struct mgsl_struct*,int ,int ) ;
 int usc_enable_aux_clock (struct mgsl_struct*,int ) ;
 int usc_enable_loopback (struct mgsl_struct*,int) ;
 int usc_loopback_frame (struct mgsl_struct*) ;
 int usc_set_sdlc_mode (struct mgsl_struct*) ;

__attribute__((used)) static void usc_set_sync_mode( struct mgsl_struct *info )
{
 usc_loopback_frame( info );
 usc_set_sdlc_mode( info );

 if (info->bus_type == MGSL_BUS_TYPE_ISA) {


  usc_OutReg(info, PCR, (u16)((usc_InReg(info, PCR) | BIT13) & ~BIT12));
 }

 usc_enable_aux_clock(info, info->params.clock_speed);

 if (info->params.loopback)
  usc_enable_loopback(info,1);

}
