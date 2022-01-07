
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int PCI_DEVICE_ID_INTEL_JAKETOWN_UBOX ;
 int PCI_VENDOR_ID_INTEL ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int* pcibus_to_physid ;

__attribute__((used)) static void snbep_pci2phy_map_init(void)
{
 struct pci_dev *ubox_dev = ((void*)0);
 int i, bus, nodeid;
 u32 config;

 while (1) {

  ubox_dev = pci_get_device(PCI_VENDOR_ID_INTEL,
     PCI_DEVICE_ID_INTEL_JAKETOWN_UBOX,
     ubox_dev);
  if (!ubox_dev)
   break;
  bus = ubox_dev->bus->number;

  pci_read_config_dword(ubox_dev, 0x40, &config);
  nodeid = config;

  pci_read_config_dword(ubox_dev, 0x54, &config);




  for (i = 0; i < 8; i++) {
   if (nodeid == ((config >> (3 * i)) & 0x7)) {
    pcibus_to_physid[bus] = i;
    break;
   }
  }
 };
 return;
}
