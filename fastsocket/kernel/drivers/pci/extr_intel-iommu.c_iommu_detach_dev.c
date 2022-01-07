
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* flush_iotlb ) (struct intel_iommu*,int ,int ,int ,int ) ;int (* flush_context ) (struct intel_iommu*,int ,int ,int ,int ) ;} ;
struct intel_iommu {TYPE_1__ flush; } ;


 int DMA_CCMD_GLOBAL_INVL ;
 int DMA_TLB_GLOBAL_FLUSH ;
 int clear_context_table (struct intel_iommu*,int ,int ) ;
 int stub1 (struct intel_iommu*,int ,int ,int ,int ) ;
 int stub2 (struct intel_iommu*,int ,int ,int ,int ) ;

__attribute__((used)) static void iommu_detach_dev(struct intel_iommu *iommu, u8 bus, u8 devfn)
{
 if (!iommu)
  return;

 clear_context_table(iommu, bus, devfn);
 iommu->flush.flush_context(iommu, 0, 0, 0,
        DMA_CCMD_GLOBAL_INVL);
 iommu->flush.flush_iotlb(iommu, 0, 0, 0, DMA_TLB_GLOBAL_FLUSH);
}
