
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pwwn; } ;
struct TYPE_6__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_3__* fcs; TYPE_2__ bport; } ;
typedef enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_7__ {int wc; } ;





 int bfa_fcs_fabric_sm_created ;
 int bfa_sm_fault (TYPE_3__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (TYPE_3__*,int) ;
 int bfa_wc_down (int *) ;

__attribute__((used)) static void
bfa_fcs_fabric_sm_cleanup(struct bfa_fcs_fabric_s *fabric,
     enum bfa_fcs_fabric_event event)
{
 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, event);

 switch (event) {
 case 128:
 case 129:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_created);
  bfa_wc_down(&(fabric->fcs)->wc);
  break;

 case 130:




  break;

 default:
  bfa_sm_fault(fabric->fcs, event);
 }
}
