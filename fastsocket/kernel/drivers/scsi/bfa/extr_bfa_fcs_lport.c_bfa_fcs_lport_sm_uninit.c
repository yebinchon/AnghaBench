
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pwwn; } ;
struct bfa_fcs_lport_s {int fcs; TYPE_1__ port_cfg; } ;
typedef enum bfa_fcs_lport_event { ____Placeholder_bfa_fcs_lport_event } bfa_fcs_lport_event ;



 int bfa_fcs_lport_sm_init ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_sm_uninit(
 struct bfa_fcs_lport_s *port,
 enum bfa_fcs_lport_event event)
{
 bfa_trc(port->fcs, port->port_cfg.pwwn);
 bfa_trc(port->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(port, bfa_fcs_lport_sm_init);
  break;

 default:
  bfa_sm_fault(port->fcs, event);
 }
}
