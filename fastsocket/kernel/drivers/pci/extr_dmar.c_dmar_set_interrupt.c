
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int irq; int name; } ;


 int EINVAL ;
 int arch_setup_dmar_msi (int) ;
 int create_irq () ;
 int destroy_irq (int) ;
 int dmar_fault ;
 int pr_err (char*) ;
 int request_irq (int,int ,int ,int ,struct intel_iommu*) ;
 int set_irq_data (int,struct intel_iommu*) ;

int dmar_set_interrupt(struct intel_iommu *iommu)
{
 int irq, ret;




 if (iommu->irq)
  return 0;

 irq = create_irq();
 if (!irq) {
  pr_err("IOMMU: no free vectors\n");
  return -EINVAL;
 }

 set_irq_data(irq, iommu);
 iommu->irq = irq;

 ret = arch_setup_dmar_msi(irq);
 if (ret) {
  set_irq_data(irq, ((void*)0));
  iommu->irq = 0;
  destroy_irq(irq);
  return ret;
 }

 ret = request_irq(irq, dmar_fault, 0, iommu->name, iommu);
 if (ret)
  pr_err("IOMMU: can't request irq\n");
 return ret;
}
