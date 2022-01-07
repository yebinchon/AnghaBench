
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq {int ioc_notify; struct bfa_ioc* ioc; int rspq; int cmdq; } ;
struct bfa_ioc {int dummy; } ;


 int BFI_MC_MSGQ ;
 int bfa_ioc_notify_init (int *,int ,struct bfa_msgq*) ;
 int bfa_msgq_cmdq_attach (int *,struct bfa_msgq*) ;
 int bfa_msgq_isr ;
 int bfa_msgq_notify ;
 int bfa_msgq_rspq_attach (int *,struct bfa_msgq*) ;
 int bfa_nw_ioc_mbox_regisr (struct bfa_ioc*,int ,int ,struct bfa_msgq*) ;
 int bfa_nw_ioc_notify_register (struct bfa_ioc*,int *) ;
 int bfa_q_qe_init (int *) ;

void
bfa_msgq_attach(struct bfa_msgq *msgq, struct bfa_ioc *ioc)
{
 msgq->ioc = ioc;

 bfa_msgq_cmdq_attach(&msgq->cmdq, msgq);
 bfa_msgq_rspq_attach(&msgq->rspq, msgq);

 bfa_nw_ioc_mbox_regisr(msgq->ioc, BFI_MC_MSGQ, bfa_msgq_isr, msgq);
 bfa_q_qe_init(&msgq->ioc_notify);
 bfa_ioc_notify_init(&msgq->ioc_notify, bfa_msgq_notify, msgq);
 bfa_nw_ioc_notify_register(msgq->ioc, &msgq->ioc_notify);
}
