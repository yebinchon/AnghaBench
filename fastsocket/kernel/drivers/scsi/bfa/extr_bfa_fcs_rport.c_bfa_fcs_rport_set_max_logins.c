
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ bfa_fcs_rport_max_logins ;

void
bfa_fcs_rport_set_max_logins(u32 max_logins)
{
 if (max_logins > 0)
  bfa_fcs_rport_max_logins = max_logins;
}
