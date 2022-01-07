
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_lps_s {int dummy; } ;


 int BFA_LPS_SM_DELETE ;
 int bfa_sm_send_event (struct bfa_lps_s*,int ) ;

void
bfa_lps_delete(struct bfa_lps_s *lps)
{
 bfa_sm_send_event(lps, BFA_LPS_SM_DELETE);
}
