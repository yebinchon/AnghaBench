
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef size_t u_int ;
struct ahc_pci_identity {int full_id; int id_mask; int * name; } ;
typedef int ahc_dev_softc_t ;


 int PCIR_DEVICE ;
 int PCIR_DEVVENDOR ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 scalar_t__ SUBID_9005_MFUNCENB (int ) ;
 scalar_t__ ahc_9005_subdevinfo_valid (int ,int ,int ,int ) ;
 int ahc_compose_id (int ,int ,int ,int ) ;
 scalar_t__ ahc_get_pci_function (int ) ;
 size_t ahc_num_pci_devs ;
 struct ahc_pci_identity* ahc_pci_ident_table ;
 int ahc_pci_read_config (int ,int ,int) ;

const struct ahc_pci_identity *
ahc_find_pci_device(ahc_dev_softc_t pci)
{
 uint64_t full_id;
 uint16_t device;
 uint16_t vendor;
 uint16_t subdevice;
 uint16_t subvendor;
 const struct ahc_pci_identity *entry;
 u_int i;

 vendor = ahc_pci_read_config(pci, PCIR_DEVVENDOR, 2);
 device = ahc_pci_read_config(pci, PCIR_DEVICE, 2);
 subvendor = ahc_pci_read_config(pci, PCIR_SUBVEND_0, 2);
 subdevice = ahc_pci_read_config(pci, PCIR_SUBDEV_0, 2);
 full_id = ahc_compose_id(device, vendor, subdevice, subvendor);
 if (ahc_get_pci_function(pci) > 0
  && ahc_9005_subdevinfo_valid(vendor, device, subvendor, subdevice)
  && SUBID_9005_MFUNCENB(subdevice) == 0)
  return (((void*)0));

 for (i = 0; i < ahc_num_pci_devs; i++) {
  entry = &ahc_pci_ident_table[i];
  if (entry->full_id == (full_id & entry->id_mask)) {

   if (entry->name == ((void*)0))
    return (((void*)0));
   return (entry);
  }
 }
 return (((void*)0));
}
