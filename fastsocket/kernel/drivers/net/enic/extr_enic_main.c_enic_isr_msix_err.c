
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int reset; int * intr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int enic_log_q_error (struct enic*) ;
 unsigned int enic_msix_err_intr (struct enic*) ;
 int schedule_work (int *) ;
 int vnic_intr_return_all_credits (int *) ;

__attribute__((used)) static irqreturn_t enic_isr_msix_err(int irq, void *data)
{
 struct enic *enic = data;
 unsigned int intr = enic_msix_err_intr(enic);

 vnic_intr_return_all_credits(&enic->intr[intr]);

 enic_log_q_error(enic);


 schedule_work(&enic->reset);

 return IRQ_HANDLED;
}
