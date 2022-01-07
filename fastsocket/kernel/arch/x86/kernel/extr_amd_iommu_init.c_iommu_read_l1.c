
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct amd_iommu {int dev; } ;


 int pci_read_config_dword (int ,int,int *) ;
 int pci_write_config_dword (int ,int,int) ;

__attribute__((used)) static u32 iommu_read_l1(struct amd_iommu *iommu, u16 l1, u8 address)
{
 u32 val;

 pci_write_config_dword(iommu->dev, 0xf8, (address | l1 << 16));
 pci_read_config_dword(iommu->dev, 0xfc, &val);
 return val;
}
