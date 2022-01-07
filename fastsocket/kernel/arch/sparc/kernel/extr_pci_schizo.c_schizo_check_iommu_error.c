
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {struct pci_pbm_info* sibling; } ;
typedef enum schizo_error_type { ____Placeholder_schizo_error_type } schizo_error_type ;


 int schizo_check_iommu_error_pbm (struct pci_pbm_info*,int) ;

__attribute__((used)) static void schizo_check_iommu_error(struct pci_pbm_info *pbm,
         enum schizo_error_type type)
{
 schizo_check_iommu_error_pbm(pbm, type);
 if (pbm->sibling)
  schizo_check_iommu_error_pbm(pbm->sibling, type);
}
