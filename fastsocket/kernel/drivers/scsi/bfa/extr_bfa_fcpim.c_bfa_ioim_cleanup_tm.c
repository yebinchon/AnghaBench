
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_tskim_s {int dummy; } ;
struct bfa_ioim_s {TYPE_1__* iosp; int itnim; int iotag; int bfa; } ;
struct TYPE_2__ {struct bfa_tskim_s* tskim; } ;


 int BFA_IOIM_SM_CLEANUP ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int bfa_trc (int ,int ) ;
 int io_tmaborts ;

void
bfa_ioim_cleanup_tm(struct bfa_ioim_s *ioim, struct bfa_tskim_s *tskim)
{
 bfa_trc(ioim->bfa, ioim->iotag);
 bfa_stats(ioim->itnim, io_tmaborts);

 ioim->iosp->tskim = tskim;
 bfa_sm_send_event(ioim, BFA_IOIM_SM_CLEANUP);
}
