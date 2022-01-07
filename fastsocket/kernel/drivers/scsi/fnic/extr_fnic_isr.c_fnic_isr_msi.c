
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int * intr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ fnic_rq_cmpl_handler (struct fnic*,int) ;
 scalar_t__ fnic_wq_cmpl_handler (struct fnic*,int) ;
 scalar_t__ fnic_wq_copy_cmpl_handler (struct fnic*,int) ;
 int vnic_intr_return_credits (int *,unsigned long,int,int) ;

__attribute__((used)) static irqreturn_t fnic_isr_msi(int irq, void *data)
{
 struct fnic *fnic = data;
 unsigned long work_done = 0;

 work_done += fnic_wq_copy_cmpl_handler(fnic, -1);
 work_done += fnic_wq_cmpl_handler(fnic, -1);
 work_done += fnic_rq_cmpl_handler(fnic, -1);

 vnic_intr_return_credits(&fnic->intr[0],
     work_done,
     1 ,
     1 );

 return IRQ_HANDLED;
}
