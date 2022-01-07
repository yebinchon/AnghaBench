
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int * intr; } ;
typedef int irqreturn_t ;


 size_t FNIC_MSIX_WQ_COPY ;
 int IRQ_HANDLED ;
 unsigned long fnic_wq_copy_cmpl_handler (struct fnic*,int) ;
 int vnic_intr_return_credits (int *,unsigned long,int,int) ;

__attribute__((used)) static irqreturn_t fnic_isr_msix_wq_copy(int irq, void *data)
{
 struct fnic *fnic = data;
 unsigned long wq_copy_work_done = 0;

 wq_copy_work_done = fnic_wq_copy_cmpl_handler(fnic, -1);
 vnic_intr_return_credits(&fnic->intr[FNIC_MSIX_WQ_COPY],
     wq_copy_work_done,
     1 ,
     1 );
 return IRQ_HANDLED;
}
