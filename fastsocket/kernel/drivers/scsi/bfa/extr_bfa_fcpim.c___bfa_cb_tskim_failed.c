
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_tskim_s {int dtsk; TYPE_1__* bfa; int itnim; } ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {int bfad; } ;


 int BFA_TSKIM_SM_HCB ;
 int BFI_TSKIM_STS_FAILED ;
 int bfa_cb_tskim_done (int ,int ,int ) ;
 int bfa_sm_send_event (struct bfa_tskim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int tm_failures ;

__attribute__((used)) static void
__bfa_cb_tskim_failed(void *cbarg, bfa_boolean_t complete)
{
 struct bfa_tskim_s *tskim = cbarg;

 if (!complete) {
  bfa_sm_send_event(tskim, BFA_TSKIM_SM_HCB);
  return;
 }

 bfa_stats(tskim->itnim, tm_failures);
 bfa_cb_tskim_done(tskim->bfa->bfad, tskim->dtsk,
    BFI_TSKIM_STS_FAILED);
}
