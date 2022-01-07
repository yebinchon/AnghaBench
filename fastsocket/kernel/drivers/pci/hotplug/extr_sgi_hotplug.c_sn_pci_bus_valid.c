
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ bs_asic_type; } ;
struct pcibus_info {TYPE_1__ pbi_buscommon; } ;
struct pci_bus {int dummy; } ;


 int EIO ;
 int EPERM ;





 scalar_t__ PCIIO_ASIC_TYPE_TIOCA ;
 struct pcibus_info* SN_PCIBUS_BUSSOFT_INFO (struct pci_bus*) ;
 int sn_ioboard_to_pci_bus (struct pci_bus*) ;

__attribute__((used)) static int sn_pci_bus_valid(struct pci_bus *pci_bus)
{
 struct pcibus_info *pcibus_info;
 u32 asic_type;
 u16 ioboard_type;


 pcibus_info = SN_PCIBUS_BUSSOFT_INFO(pci_bus);
 asic_type = pcibus_info->pbi_buscommon.bs_asic_type;
 if (asic_type == PCIIO_ASIC_TYPE_TIOCA)
  return -EPERM;


 ioboard_type = sn_ioboard_to_pci_bus(pci_bus);
 switch (ioboard_type) {
  case 130:
  case 128:
  case 131:
  case 129:
  case 132:
   return 1;
   break;
  default:
   return -EPERM;
   break;
 }

 return -EIO;
}
