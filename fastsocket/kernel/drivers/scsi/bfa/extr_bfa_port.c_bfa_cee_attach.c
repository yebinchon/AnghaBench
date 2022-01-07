
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_ioc_s {int notify_q; } ;
struct TYPE_3__ {int qe; } ;
struct bfa_cee_s {struct bfa_ioc_s* ioc; TYPE_1__ ioc_notify; void* dev; } ;


 int BFI_MC_CEE ;
 int WARN_ON (int ) ;
 int bfa_cee_isr ;
 int bfa_cee_notify ;
 int bfa_ioc_mbox_regisr (struct bfa_ioc_s*,int ,int ,struct bfa_cee_s*) ;
 int bfa_ioc_notify_init (TYPE_1__*,int ,struct bfa_cee_s*) ;
 int bfa_q_qe_init (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;

void
bfa_cee_attach(struct bfa_cee_s *cee, struct bfa_ioc_s *ioc,
  void *dev)
{
 WARN_ON(cee == ((void*)0));
 cee->dev = dev;
 cee->ioc = ioc;

 bfa_ioc_mbox_regisr(cee->ioc, BFI_MC_CEE, bfa_cee_isr, cee);
 bfa_q_qe_init(&cee->ioc_notify);
 bfa_ioc_notify_init(&cee->ioc_notify, bfa_cee_notify, cee);
 list_add_tail(&cee->ioc_notify.qe, &cee->ioc->notify_q);
}
