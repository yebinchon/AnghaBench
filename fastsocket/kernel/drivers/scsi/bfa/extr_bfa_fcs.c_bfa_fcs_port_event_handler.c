
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_s {int fabric; } ;
typedef enum bfa_port_linkstate { ____Placeholder_bfa_port_linkstate } bfa_port_linkstate ;




 int WARN_ON (int) ;
 int bfa_fcs_fabric_link_down (int *) ;
 int bfa_fcs_fabric_link_up (int *) ;
 int bfa_trc (struct bfa_fcs_s*,int) ;

__attribute__((used)) static void
bfa_fcs_port_event_handler(void *cbarg, enum bfa_port_linkstate event)
{
 struct bfa_fcs_s *fcs = cbarg;

 bfa_trc(fcs, event);

 switch (event) {
 case 128:
  bfa_fcs_fabric_link_up(&fcs->fabric);
  break;

 case 129:
  bfa_fcs_fabric_link_down(&fcs->fabric);
  break;

 default:
  WARN_ON(1);
 }
}
