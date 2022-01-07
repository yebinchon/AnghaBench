
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {void* address_hi; void* address_lo; void* data; } ;
struct intel_iommu {int register_lock; scalar_t__ reg; } ;


 scalar_t__ DMAR_FEADDR_REG ;
 scalar_t__ DMAR_FEDATA_REG ;
 scalar_t__ DMAR_FEUADDR_REG ;
 struct intel_iommu* get_irq_data (int) ;
 void* readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dmar_msi_read(int irq, struct msi_msg *msg)
{
 struct intel_iommu *iommu = get_irq_data(irq);
 unsigned long flag;

 spin_lock_irqsave(&iommu->register_lock, flag);
 msg->data = readl(iommu->reg + DMAR_FEDATA_REG);
 msg->address_lo = readl(iommu->reg + DMAR_FEADDR_REG);
 msg->address_hi = readl(iommu->reg + DMAR_FEUADDR_REG);
 spin_unlock_irqrestore(&iommu->register_lock, flag);
}
