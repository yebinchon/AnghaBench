
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioim_s {int bfa; int reqq; int fcpim; } ;


 int BFA_FALSE ;
 int BFA_IOIM_SM_START ;
 scalar_t__ bfa_fcpim_ioredirect_enabled (int ) ;
 int bfa_ioim_cb_profile_start (int ,struct bfa_ioim_s*) ;
 int bfa_itnim_get_reqq (struct bfa_ioim_s*) ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;

void
bfa_ioim_start(struct bfa_ioim_s *ioim)
{
 bfa_ioim_cb_profile_start(ioim->fcpim, ioim);




 ioim->reqq = bfa_fcpim_ioredirect_enabled(ioim->bfa) ?
   BFA_FALSE : bfa_itnim_get_reqq(ioim);

 bfa_sm_send_event(ioim, BFA_IOIM_SM_START);
}
