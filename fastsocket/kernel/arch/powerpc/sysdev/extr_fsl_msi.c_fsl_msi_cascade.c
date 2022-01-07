
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_desc {int status; int lock; TYPE_1__* chip; scalar_t__ handler_data; } ;
struct fsl_msi {int feature; int irqhost; int msi_regs; } ;
struct TYPE_2__ {int (* unmask ) (unsigned int) ;int (* eoi ) (unsigned int) ;int (* ack ) (unsigned int) ;int (* mask ) (unsigned int) ;int (* mask_ack ) (unsigned int) ;} ;



 int FSL_PIC_IP_MASK ;

 int IRQS_PER_MSI_REG ;
 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 unsigned int NO_IRQ ;
 int NR_MSI_REG ;
 int ffs (int) ;
 struct fsl_msi* fsl_msi ;
 int fsl_msi_read (int ,int) ;
 int generic_handle_irq (unsigned int) ;
 unsigned int irq_linear_revmap (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;
 int stub3 (unsigned int) ;
 int stub4 (unsigned int) ;
 int stub5 (unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void fsl_msi_cascade(unsigned int irq, struct irq_desc *desc)
{
 unsigned int cascade_irq;
 struct fsl_msi *msi_data = fsl_msi;
 int msir_index = -1;
 u32 msir_value = 0;
 u32 intr_index;
 u32 have_shift = 0;

 spin_lock(&desc->lock);
 if ((msi_data->feature & FSL_PIC_IP_MASK) == 129) {
  if (desc->chip->mask_ack)
   desc->chip->mask_ack(irq);
  else {
   desc->chip->mask(irq);
   desc->chip->ack(irq);
  }
 }

 if (unlikely(desc->status & IRQ_INPROGRESS))
  goto unlock;

 msir_index = (int)desc->handler_data;

 if (msir_index >= NR_MSI_REG)
  cascade_irq = NO_IRQ;

 desc->status |= IRQ_INPROGRESS;
 switch (fsl_msi->feature & FSL_PIC_IP_MASK) {
 case 128:
  msir_value = fsl_msi_read(msi_data->msi_regs,
   msir_index * 0x10);
  break;
 case 129:
  msir_value = fsl_msi_read(msi_data->msi_regs, msir_index * 0x4);
  break;
 }

 while (msir_value) {
  intr_index = ffs(msir_value) - 1;

  cascade_irq = irq_linear_revmap(msi_data->irqhost,
    msir_index * IRQS_PER_MSI_REG +
     intr_index + have_shift);
  if (cascade_irq != NO_IRQ)
   generic_handle_irq(cascade_irq);
  have_shift += intr_index + 1;
  msir_value = msir_value >> (intr_index + 1);
 }
 desc->status &= ~IRQ_INPROGRESS;

 switch (msi_data->feature & FSL_PIC_IP_MASK) {
 case 128:
  desc->chip->eoi(irq);
  break;
 case 129:
  if (!(desc->status & IRQ_DISABLED) && desc->chip->unmask)
   desc->chip->unmask(irq);
  break;
 }
unlock:
 spin_unlock(&desc->lock);
}
