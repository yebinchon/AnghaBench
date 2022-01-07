
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int pdev; } ;


 int PCICFG_GRC_ADDRESS ;
 int PCICFG_GRC_DATA ;
 int PCICFG_VENDOR_ID_OFFSET ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static u32 bnx2x_reg_rd_ind(struct bnx2x *bp, u32 addr)
{
 u32 val;

 pci_write_config_dword(bp->pdev, PCICFG_GRC_ADDRESS, addr);
 pci_read_config_dword(bp->pdev, PCICFG_GRC_DATA, &val);
 pci_write_config_dword(bp->pdev, PCICFG_GRC_ADDRESS,
          PCICFG_VENDOR_ID_OFFSET);

 return val;
}
