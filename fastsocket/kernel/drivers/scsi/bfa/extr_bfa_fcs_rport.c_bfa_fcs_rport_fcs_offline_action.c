
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int itnim; int pid; } ;


 int BFA_FCS_PID_IS_WKA (int ) ;
 int bfa_fcs_itnim_rport_offline (int ) ;
 int bfa_fcs_rpf_rport_offline (struct bfa_fcs_rport_s*) ;

__attribute__((used)) static void
bfa_fcs_rport_fcs_offline_action(struct bfa_fcs_rport_s *rport)
{
 if (!BFA_FCS_PID_IS_WKA(rport->pid))
  bfa_fcs_rpf_rport_offline(rport);

 bfa_fcs_itnim_rport_offline(rport->itnim);
}
