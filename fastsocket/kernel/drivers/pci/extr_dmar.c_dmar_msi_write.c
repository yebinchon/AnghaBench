
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int address_hi; int address_lo; int data; } ;
struct intel_iommu {int register_lock; scalar_t__ reg; } ;


 scalar_t__ DMAR_FEADDR_REG ;
 scalar_t__ DMAR_FEDATA_REG ;
 scalar_t__ DMAR_FEUADDR_REG ;
 struct intel_iommu* get_irq_data (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

void dmar_msi_write(int irq, struct msi_msg *msg)
{
 struct intel_iommu *iommu = get_irq_data(irq);
 unsigned long flag;

 spin_lock_irqsave(&iommu->register_lock, flag);
 writel(msg->data, iommu->reg + DMAR_FEDATA_REG);
 writel(msg->address_lo, iommu->reg + DMAR_FEADDR_REG);
 writel(msg->address_hi, iommu->reg + DMAR_FEUADDR_REG);
 spin_unlock_irqrestore(&iommu->register_lock, flag);
}
