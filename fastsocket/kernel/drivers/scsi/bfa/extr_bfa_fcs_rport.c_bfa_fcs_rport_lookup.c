
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
struct bfa_fcs_rport_s {int dummy; } ;
struct bfa_fcs_lport_s {int dummy; } ;


 struct bfa_fcs_rport_s* bfa_fcs_lport_get_rport_by_pwwn (struct bfa_fcs_lport_s*,int ) ;

struct bfa_fcs_rport_s *
bfa_fcs_rport_lookup(struct bfa_fcs_lport_s *port, wwn_t rpwwn)
{
 struct bfa_fcs_rport_s *rport;

 rport = bfa_fcs_lport_get_rport_by_pwwn(port, rpwwn);
 if (rport == ((void*)0)) {



 }

 return rport;
}
