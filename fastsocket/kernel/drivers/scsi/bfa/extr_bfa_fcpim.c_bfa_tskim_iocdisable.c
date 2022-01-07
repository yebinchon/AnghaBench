
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_tskim_s {int itnim; int notify; } ;


 int BFA_FALSE ;
 int BFA_TSKIM_SM_HWFAIL ;
 int bfa_sm_send_event (struct bfa_tskim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int tm_iocdowns ;

void
bfa_tskim_iocdisable(struct bfa_tskim_s *tskim)
{
 tskim->notify = BFA_FALSE;
 bfa_stats(tskim->itnim, tm_iocdowns);
 bfa_sm_send_event(tskim, BFA_TSKIM_SM_HWFAIL);
}
