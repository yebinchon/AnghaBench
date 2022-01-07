
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pwwn; } ;
struct bfa_fcs_lport_s {int fcs; int vport; TYPE_2__ port_cfg; } ;
struct bfa_fcs_lport_fdmi_s {scalar_t__ retry_cnt; TYPE_1__* ms; } ;
typedef enum port_fdmi_event { ____Placeholder_port_fdmi_event } port_fdmi_event ;
struct TYPE_3__ {struct bfa_fcs_lport_s* port; } ;




 int bfa_fcs_lport_fdmi_send_rhba (struct bfa_fcs_lport_fdmi_s*,int *) ;
 int bfa_fcs_lport_fdmi_send_rprt (struct bfa_fcs_lport_fdmi_s*,int *) ;
 int bfa_fcs_lport_fdmi_sm_sending_rhba ;
 int bfa_fcs_lport_fdmi_sm_sending_rprt ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_fdmi_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_fdmi_sm_offline(struct bfa_fcs_lport_fdmi_s *fdmi,
        enum port_fdmi_event event)
{
 struct bfa_fcs_lport_s *port = fdmi->ms->port;

 bfa_trc(port->fcs, port->port_cfg.pwwn);
 bfa_trc(port->fcs, event);

 fdmi->retry_cnt = 0;

 switch (event) {
 case 128:
  if (port->vport) {



   bfa_sm_set_state(fdmi,
      bfa_fcs_lport_fdmi_sm_sending_rprt);
   bfa_fcs_lport_fdmi_send_rprt(fdmi, ((void*)0));
  } else {





   bfa_sm_set_state(fdmi,
      bfa_fcs_lport_fdmi_sm_sending_rhba);
   bfa_fcs_lport_fdmi_send_rhba(fdmi, ((void*)0));
  }
  break;

 case 129:
  break;

 default:
  bfa_sm_fault(port->fcs, event);
 }
}
