
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ bs_persist_busnum; } ;
struct pcibus_info {int pbi_valid_devices; TYPE_1__ pbi_buscommon; } ;
struct pci_bus {int dummy; } ;


 int EPERM ;
 scalar_t__ L1_BRICKTYPE_IA ;
 scalar_t__ L1_BRICKTYPE_IX ;
 struct pcibus_info* SN_PCIBUS_BUSSOFT_INFO (struct pci_bus*) ;
 int pci_domain_nr (struct pci_bus*) ;
 scalar_t__ sn_ioboard_to_pci_bus (struct pci_bus*) ;

__attribute__((used)) static int sn_pci_slot_valid(struct pci_bus *pci_bus, int device)
{
 struct pcibus_info *pcibus_info;
 u16 busnum, segment, ioboard_type;

 pcibus_info = SN_PCIBUS_BUSSOFT_INFO(pci_bus);


 if (!(pcibus_info->pbi_valid_devices & (1 << device)))
  return -EPERM;

 ioboard_type = sn_ioboard_to_pci_bus(pci_bus);
 busnum = pcibus_info->pbi_buscommon.bs_persist_busnum;
 segment = pci_domain_nr(pci_bus) & 0xf;


 if ((ioboard_type == L1_BRICKTYPE_IX ||
      ioboard_type == L1_BRICKTYPE_IA) &&
     (segment == 1 && busnum == 0 && device != 1))
  return -EPERM;

 return 1;
}
