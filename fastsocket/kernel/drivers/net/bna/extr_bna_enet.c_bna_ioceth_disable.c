
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_ioceth {TYPE_1__* bna; int stop_cbarg; int (* stop_cbfn ) (int ) ;} ;
typedef enum bna_cleanup_type { ____Placeholder_bna_cleanup_type } bna_cleanup_type ;
struct TYPE_2__ {int bnad; } ;


 int BNA_SOFT_CLEANUP ;
 int IOCETH_E_DISABLE ;
 int bfa_fsm_send_event (struct bna_ioceth*,int ) ;
 int bnad_cb_ioceth_disabled (int ) ;

void
bna_ioceth_disable(struct bna_ioceth *ioceth, enum bna_cleanup_type type)
{
 if (type == BNA_SOFT_CLEANUP) {
  bnad_cb_ioceth_disabled(ioceth->bna->bnad);
  return;
 }

 ioceth->stop_cbfn = bnad_cb_ioceth_disabled;
 ioceth->stop_cbarg = ioceth->bna->bnad;

 bfa_fsm_send_event(ioceth, IOCETH_E_DISABLE);
}
