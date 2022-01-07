
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioim_s {int dio; TYPE_1__* bfa; } ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {int bfad; } ;


 int BFA_IOIM_SM_HCB ;
 int bfa_cb_ioim_abort (int ,int ) ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;

__attribute__((used)) static void
__bfa_cb_ioim_abort(void *cbarg, bfa_boolean_t complete)
{
 struct bfa_ioim_s *ioim = cbarg;

 if (!complete) {
  bfa_sm_send_event(ioim, BFA_IOIM_SM_HCB);
  return;
 }

 bfa_cb_ioim_abort(ioim->bfa->bfad, ioim->dio);
}
