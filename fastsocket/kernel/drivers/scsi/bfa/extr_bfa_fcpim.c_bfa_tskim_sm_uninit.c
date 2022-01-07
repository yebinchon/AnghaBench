
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_tskim_s {int tsk_tag; int bfa; int reqq_wait; TYPE_1__* itnim; int tsk_status; } ;
typedef enum bfa_tskim_event { ____Placeholder_bfa_tskim_event } bfa_tskim_event ;
struct TYPE_3__ {int reqq; } ;



 int BFI_TSKIM_STS_OK ;
 int bfa_itnim_is_online (TYPE_1__*) ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_tskim_s*,int ) ;
 int bfa_stats (TYPE_1__*,int ) ;
 int bfa_trc (int ,int) ;
 int bfa_tskim_cleanup_ios (struct bfa_tskim_s*) ;
 int bfa_tskim_gather_ios (struct bfa_tskim_s*) ;
 int bfa_tskim_send (struct bfa_tskim_s*) ;
 int bfa_tskim_sm_active ;
 int bfa_tskim_sm_iocleanup ;
 int bfa_tskim_sm_qfull ;
 int tm_qwait ;

__attribute__((used)) static void
bfa_tskim_sm_uninit(struct bfa_tskim_s *tskim, enum bfa_tskim_event event)
{
 bfa_trc(tskim->bfa, tskim->tsk_tag << 16 | event);

 switch (event) {
 case 128:
  bfa_sm_set_state(tskim, bfa_tskim_sm_active);
  bfa_tskim_gather_ios(tskim);





  if (!bfa_itnim_is_online(tskim->itnim)) {
   bfa_sm_set_state(tskim, bfa_tskim_sm_iocleanup);
   tskim->tsk_status = BFI_TSKIM_STS_OK;
   bfa_tskim_cleanup_ios(tskim);
   return;
  }

  if (!bfa_tskim_send(tskim)) {
   bfa_sm_set_state(tskim, bfa_tskim_sm_qfull);
   bfa_stats(tskim->itnim, tm_qwait);
   bfa_reqq_wait(tskim->bfa, tskim->itnim->reqq,
       &tskim->reqq_wait);
  }
  break;

 default:
  bfa_sm_fault(tskim->bfa, event);
 }
}
