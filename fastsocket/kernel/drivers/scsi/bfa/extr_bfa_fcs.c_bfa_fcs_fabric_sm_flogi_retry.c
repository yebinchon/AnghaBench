
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pwwn; } ;
struct TYPE_4__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {int fcs; int delay_timer; TYPE_2__ bport; } ;
typedef enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;





 int bfa_fcs_fabric_delete (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_login (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_sm_deleting ;
 int bfa_fcs_fabric_sm_flogi ;
 int bfa_fcs_fabric_sm_linkdown ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_timer_stop (int *) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_fabric_sm_flogi_retry(struct bfa_fcs_fabric_s *fabric,
         enum bfa_fcs_fabric_event event)
{
 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, event);

 switch (event) {
 case 130:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_flogi);
  bfa_fcs_fabric_login(fabric);
  break;

 case 128:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_linkdown);
  bfa_timer_stop(&fabric->delay_timer);
  break;

 case 129:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_deleting);
  bfa_timer_stop(&fabric->delay_timer);
  bfa_fcs_fabric_delete(fabric);
  break;

 default:
  bfa_sm_fault(fabric->fcs, event);
 }
}
