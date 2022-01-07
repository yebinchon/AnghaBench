
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {scalar_t__ controller_regs; } ;


 scalar_t__ PSYCHO_IOMMU_DATA ;
 scalar_t__ PSYCHO_IOMMU_TAG ;
 int upa_writeq (int ,scalar_t__) ;

__attribute__((used)) static void psycho_iommu_flush(struct pci_pbm_info *pbm)
{
 int i;

 for (i = 0; i < 16; i++) {
  unsigned long off = i * 8;

  upa_writeq(0, pbm->controller_regs + PSYCHO_IOMMU_TAG + off);
  upa_writeq(0, pbm->controller_regs + PSYCHO_IOMMU_DATA + off);
 }
}
