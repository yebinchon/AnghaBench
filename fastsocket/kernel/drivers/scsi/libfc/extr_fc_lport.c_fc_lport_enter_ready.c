
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* disc_start ) (int ,struct fc_lport*) ;} ;
struct fc_lport {TYPE_1__ tt; int ptp_rdata; scalar_t__ vport; } ;


 int FC_LPORT_DBG (struct fc_lport*,char*,int ) ;
 int FC_VPORT_ACTIVE ;
 int LPORT_ST_READY ;
 int fc_lport_disc_callback ;
 int fc_lport_state (struct fc_lport*) ;
 int fc_lport_state_enter (struct fc_lport*,int ) ;
 int fc_vport_set_state (scalar_t__,int ) ;
 int fc_vports_linkchange (struct fc_lport*) ;
 int stub1 (int ,struct fc_lport*) ;

__attribute__((used)) static void fc_lport_enter_ready(struct fc_lport *lport)
{
 FC_LPORT_DBG(lport, "Entered READY from state %s\n",
       fc_lport_state(lport));

 fc_lport_state_enter(lport, LPORT_ST_READY);
 if (lport->vport)
  fc_vport_set_state(lport->vport, FC_VPORT_ACTIVE);
 fc_vports_linkchange(lport);

 if (!lport->ptp_rdata)
  lport->tt.disc_start(fc_lport_disc_callback, lport);
}
