
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {scalar_t__ number; } ;


 int BUG () ;
 int CONFIG_CMD (struct pci_bus*,unsigned int,int) ;
 int PCIBIOS_SUCCESSFUL ;
 unsigned int PCI_DEVFN (int ,int ) ;
 int __get_PciBridgeDataL (int) ;
 int __get_PciCfgDataL (int) ;
 int __set_PciCfgAddr (int ) ;

__attribute__((used)) static int pci_frv_read_config(struct pci_bus *bus, unsigned int devfn, int where, int size,
          u32 *val)
{
 u32 _value;

 if (bus->number == 0 && devfn == PCI_DEVFN(0, 0)) {
  _value = __get_PciBridgeDataL(where & ~3);
 }
 else {
  __set_PciCfgAddr(CONFIG_CMD(bus, devfn, where));
  _value = __get_PciCfgDataL(where & ~3);
 }

 switch (size) {
 case 1:
  _value = _value >> ((where & 3) * 8);
  break;

 case 2:
  _value = _value >> ((where & 2) * 8);
  break;

 case 4:
  break;

 default:
  BUG();
 }

 *val = _value;
 return PCIBIOS_SUCCESSFUL;
}
