
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int bfa_fcs_rport_del_timeout ;

void
bfa_fcs_rport_set_del_timeout(u8 rport_tmo)
{

 if (rport_tmo > 0)
  bfa_fcs_rport_del_timeout = rport_tmo * 1000;
}
