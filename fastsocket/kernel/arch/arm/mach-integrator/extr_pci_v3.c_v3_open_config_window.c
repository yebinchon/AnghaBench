
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {unsigned int number; } ;


 int BUG () ;
 unsigned long PCI_CONFIG_VADDR ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int PHYS_PCI_CONFIG_BASE ;
 int PHYS_PCI_MEM_BASE ;
 int V3_LB_BASE0 ;
 int V3_LB_BASE1 ;
 int V3_LB_BASE_ADR_SIZE_16MB ;
 int V3_LB_BASE_ADR_SIZE_512MB ;
 int V3_LB_BASE_ENABLE ;
 int V3_LB_MAP1 ;
 unsigned int V3_LB_MAP_AD_LOW_EN ;
 unsigned int V3_LB_MAP_TYPE_CONFIG ;
 int v3_addr_to_lb_base (int ) ;
 int v3_writel (int ,int) ;
 int v3_writew (int ,unsigned int) ;

__attribute__((used)) static unsigned long v3_open_config_window(struct pci_bus *bus,
        unsigned int devfn, int offset)
{
 unsigned int address, mapaddress, busnr;

 busnr = bus->number;




 if (offset > 255)
  BUG();
 if (busnr > 255)
  BUG();
 if (devfn > 255)
  BUG();

 if (busnr == 0) {
  int slot = PCI_SLOT(devfn);
  address = PCI_FUNC(devfn) << 8;
  mapaddress = V3_LB_MAP_TYPE_CONFIG;

  if (slot > 12)



   mapaddress |= 1 << (slot - 5);
  else



   address |= 1 << (slot + 11);
 } else {
  mapaddress = V3_LB_MAP_TYPE_CONFIG | V3_LB_MAP_AD_LOW_EN;
  address = (busnr << 16) | (devfn << 8);
 }






 v3_writel(V3_LB_BASE0, v3_addr_to_lb_base(PHYS_PCI_MEM_BASE) |
   V3_LB_BASE_ADR_SIZE_512MB | V3_LB_BASE_ENABLE);




 v3_writel(V3_LB_BASE1, v3_addr_to_lb_base(PHYS_PCI_CONFIG_BASE) |
   V3_LB_BASE_ADR_SIZE_16MB | V3_LB_BASE_ENABLE);
 v3_writew(V3_LB_MAP1, mapaddress);

 return PCI_CONFIG_VADDR + address + offset;
}
