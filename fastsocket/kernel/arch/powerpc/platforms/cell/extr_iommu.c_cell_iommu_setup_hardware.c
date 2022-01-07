
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbe_iommu {int ptab; } ;


 int IOMMU_PAGE_SHIFT ;
 int cell_iommu_alloc_ptab (struct cbe_iommu*,unsigned long,unsigned long,int ,int ,int ) ;
 int cell_iommu_enable_hardware (struct cbe_iommu*) ;
 int cell_iommu_setup_stab (struct cbe_iommu*,unsigned long,unsigned long,int ,int ) ;

__attribute__((used)) static void cell_iommu_setup_hardware(struct cbe_iommu *iommu,
 unsigned long base, unsigned long size)
{
 cell_iommu_setup_stab(iommu, base, size, 0, 0);
 iommu->ptab = cell_iommu_alloc_ptab(iommu, base, size, 0, 0,
         IOMMU_PAGE_SHIFT);
 cell_iommu_enable_hardware(iommu);
}
