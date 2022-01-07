
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int pdev; } ;
typedef enum bnx2x_pci_bus_speed { ____Placeholder_bnx2x_pci_bus_speed } bnx2x_pci_bus_speed ;


 int BNX2X_PCI_LINK_SPEED_2500 ;
 int BNX2X_PCI_LINK_SPEED_5000 ;
 int BNX2X_PCI_LINK_SPEED_8000 ;
 int PCICFG_LINK_CONTROL ;
 int PCICFG_LINK_SPEED ;
 int PCICFG_LINK_SPEED_SHIFT ;
 int PCICFG_LINK_WIDTH ;
 int PCICFG_LINK_WIDTH_SHIFT ;
 int pci_read_config_dword (int ,int ,int*) ;

__attribute__((used)) static void bnx2x_get_pcie_width_speed(struct bnx2x *bp, int *width,
           enum bnx2x_pci_bus_speed *speed)
{
 u32 link_speed, val = 0;

 pci_read_config_dword(bp->pdev, PCICFG_LINK_CONTROL, &val);
 *width = (val & PCICFG_LINK_WIDTH) >> PCICFG_LINK_WIDTH_SHIFT;

 link_speed = (val & PCICFG_LINK_SPEED) >> PCICFG_LINK_SPEED_SHIFT;

 switch (link_speed) {
 case 3:
  *speed = BNX2X_PCI_LINK_SPEED_8000;
  break;
 case 2:
  *speed = BNX2X_PCI_LINK_SPEED_5000;
  break;
 default:
  *speed = BNX2X_PCI_LINK_SPEED_2500;
 }
}
