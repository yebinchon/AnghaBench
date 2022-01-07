
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int * intr; } ;
typedef int irqreturn_t ;


 size_t FNIC_MSIX_ERR_NOTIFY ;
 int IRQ_HANDLED ;
 int fnic_handle_link_event (struct fnic*) ;
 int fnic_log_q_error (struct fnic*) ;
 int vnic_intr_return_all_credits (int *) ;

__attribute__((used)) static irqreturn_t fnic_isr_msix_err_notify(int irq, void *data)
{
 struct fnic *fnic = data;

 vnic_intr_return_all_credits(&fnic->intr[FNIC_MSIX_ERR_NOTIFY]);
 fnic_log_q_error(fnic);
 fnic_handle_link_event(fnic);

 return IRQ_HANDLED;
}
