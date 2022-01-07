
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct amd_iommu {int dummy; } ;


 int CMD_INV_IOMMU_ALL_PAGES_ADDRESS ;
 int INC_STATS_COUNTER (int ) ;
 int domain_flush_single ;
 int iommu_queue_inv_iommu_pages (struct amd_iommu*,int ,int ,int,int) ;

__attribute__((used)) static void iommu_flush_tlb_pde(struct amd_iommu *iommu, u16 domid)
{
       u64 address = CMD_INV_IOMMU_ALL_PAGES_ADDRESS;

       INC_STATS_COUNTER(domain_flush_single);

       iommu_queue_inv_iommu_pages(iommu, address, domid, 1, 1);
}
