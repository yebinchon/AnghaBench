
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct amd_iommu {int dummy; } ;


 int CMD_INV_IOMMU_ALL_PAGES_ADDRESS ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 unsigned int iommu_num_pages (int ,size_t,int ) ;
 int iommu_queue_inv_iommu_pages (struct amd_iommu*,int ,int ,int ,int) ;

__attribute__((used)) static int iommu_flush_pages(struct amd_iommu *iommu, u16 domid,
  u64 address, size_t size)
{
 int s = 0;
 unsigned pages = iommu_num_pages(address, size, PAGE_SIZE);

 address &= PAGE_MASK;

 if (pages > 1) {




  address = CMD_INV_IOMMU_ALL_PAGES_ADDRESS;
  s = 1;
 }

 iommu_queue_inv_iommu_pages(iommu, address, domid, 0, s);

 return 0;
}
