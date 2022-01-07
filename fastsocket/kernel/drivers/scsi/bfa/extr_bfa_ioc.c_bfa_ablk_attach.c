
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_ioc_s {int notify_q; } ;
struct TYPE_3__ {int qe; } ;
struct bfa_ablk_s {struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; } ;


 int BFI_MC_ABLK ;
 int bfa_ablk_isr ;
 int bfa_ablk_notify ;
 int bfa_ioc_mbox_regisr (struct bfa_ioc_s*,int ,int ,struct bfa_ablk_s*) ;
 int bfa_ioc_notify_init (TYPE_1__*,int ,struct bfa_ablk_s*) ;
 int bfa_q_qe_init (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;

void
bfa_ablk_attach(struct bfa_ablk_s *ablk, struct bfa_ioc_s *ioc)
{
 ablk->ioc = ioc;

 bfa_ioc_mbox_regisr(ablk->ioc, BFI_MC_ABLK, bfa_ablk_isr, ablk);
 bfa_q_qe_init(&ablk->ioc_notify);
 bfa_ioc_notify_init(&ablk->ioc_notify, bfa_ablk_notify, ablk);
 list_add_tail(&ablk->ioc_notify.qe, &ablk->ioc->notify_q);
}
