
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int * intr; int * cq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int enic_cq_wq (struct enic*,int ) ;
 unsigned int enic_msix_wq_intr (struct enic*,int ) ;
 int enic_wq_service ;
 unsigned int vnic_cq_service (int *,unsigned int,int ,int *) ;
 int vnic_intr_return_credits (int *,unsigned int,int,int) ;

__attribute__((used)) static irqreturn_t enic_isr_msix_wq(int irq, void *data)
{
 struct enic *enic = data;
 unsigned int cq = enic_cq_wq(enic, 0);
 unsigned int intr = enic_msix_wq_intr(enic, 0);
 unsigned int wq_work_to_do = -1;
 unsigned int wq_work_done;

 wq_work_done = vnic_cq_service(&enic->cq[cq],
  wq_work_to_do, enic_wq_service, ((void*)0));

 vnic_intr_return_credits(&enic->intr[intr],
  wq_work_done,
  1 ,
  1 );

 return IRQ_HANDLED;
}
