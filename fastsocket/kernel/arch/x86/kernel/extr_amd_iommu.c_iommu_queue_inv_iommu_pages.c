
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;


 int __iommu_build_inv_iommu_pages (struct iommu_cmd*,int ,int ,int,int) ;
 int iommu_queue_command (struct amd_iommu*,struct iommu_cmd*) ;

__attribute__((used)) static int iommu_queue_inv_iommu_pages(struct amd_iommu *iommu,
  u64 address, u16 domid, int pde, int s)
{
 struct iommu_cmd cmd;
 int ret;

 __iommu_build_inv_iommu_pages(&cmd, address, domid, pde, s);

 ret = iommu_queue_command(iommu, &cmd);

 return ret;
}
