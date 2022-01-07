
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioim_s {TYPE_1__* fcpim; int qe; int io_cbfn; int hcb_qe; int bfa; int itnim; } ;
typedef scalar_t__ bfa_boolean_t ;
struct TYPE_2__ {int ioim_comp_q; } ;


 int __bfa_cb_ioim_failed ;
 int __bfa_cb_ioim_pathtov ;
 int bfa_cb_queue (int ,int *,int ,struct bfa_ioim_s*) ;
 int bfa_stats (int ,int ) ;
 int iocom_nexus_abort ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

void
bfa_ioim_delayed_comp(struct bfa_ioim_s *ioim, bfa_boolean_t iotov)
{







 if (iotov)
  ioim->io_cbfn = __bfa_cb_ioim_pathtov;
 else {
  ioim->io_cbfn = __bfa_cb_ioim_failed;
  bfa_stats(ioim->itnim, iocom_nexus_abort);
 }
 bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, ioim->io_cbfn, ioim);





 list_del(&ioim->qe);
 list_add_tail(&ioim->qe, &ioim->fcpim->ioim_comp_q);
}
