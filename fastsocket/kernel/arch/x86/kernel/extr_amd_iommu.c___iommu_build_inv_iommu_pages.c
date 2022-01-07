
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct iommu_cmd {int * data; } ;


 int CMD_INV_IOMMU_PAGES ;
 int CMD_INV_IOMMU_PAGES_PDE_MASK ;
 int CMD_INV_IOMMU_PAGES_SIZE_MASK ;
 int CMD_SET_TYPE (struct iommu_cmd*,int ) ;
 int PAGE_MASK ;
 int lower_32_bits (int ) ;
 int memset (struct iommu_cmd*,int ,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void __iommu_build_inv_iommu_pages(struct iommu_cmd *cmd, u64 address,
       u16 domid, int pde, int s)
{
 memset(cmd, 0, sizeof(*cmd));
 address &= PAGE_MASK;
 CMD_SET_TYPE(cmd, CMD_INV_IOMMU_PAGES);
 cmd->data[1] |= domid;
 cmd->data[2] = lower_32_bits(address);
 cmd->data[3] = upper_32_bits(address);
 if (s)
  cmd->data[2] |= CMD_INV_IOMMU_PAGES_SIZE_MASK;
 if (pde)
  cmd->data[2] |= CMD_INV_IOMMU_PAGES_PDE_MASK;
}
