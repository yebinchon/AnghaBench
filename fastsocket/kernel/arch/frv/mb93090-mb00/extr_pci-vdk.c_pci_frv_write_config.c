
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int BUG () ;
 int CONFIG_CMD (struct pci_bus*,unsigned int,int) ;
 int PCIBIOS_SUCCESSFUL ;
 unsigned int PCI_DEVFN (int ,int ) ;
 int __set_PciBridgeDataB (int,int ) ;
 int __set_PciBridgeDataL (int,int ) ;
 int __set_PciBridgeDataW (int,int ) ;
 int __set_PciCfgAddr (int ) ;
 int __set_PciCfgDataB (int,int ) ;
 int __set_PciCfgDataL (int,int ) ;
 int __set_PciCfgDataW (int,int ) ;

__attribute__((used)) static int pci_frv_write_config(struct pci_bus *bus, unsigned int devfn, int where, int size,
    u32 value)
{
 switch (size) {
 case 1:
  if (bus->number == 0 && devfn == PCI_DEVFN(0, 0)) {
   __set_PciBridgeDataB(where, value);
  }
  else {
   __set_PciCfgAddr(CONFIG_CMD(bus, devfn, where));
   __set_PciCfgDataB(where, value);
  }
  break;

 case 2:
  if (bus->number == 0 && devfn == PCI_DEVFN(0, 0)) {
   __set_PciBridgeDataW(where, value);
  }
  else {
   __set_PciCfgAddr(CONFIG_CMD(bus, devfn, where));
   __set_PciCfgDataW(where, value);
  }
  break;

 case 4:
  if (bus->number == 0 && devfn == PCI_DEVFN(0, 0)) {
   __set_PciBridgeDataL(where, value);
  }
  else {
   __set_PciCfgAddr(CONFIG_CMD(bus, devfn, where));
   __set_PciCfgDataL(where, value);
  }
  break;

 default:
  BUG();
 }

 return PCIBIOS_SUCCESSFUL;
}
