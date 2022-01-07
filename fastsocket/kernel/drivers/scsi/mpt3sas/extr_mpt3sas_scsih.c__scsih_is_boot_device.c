
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct TYPE_3__ {int DeviceName; int EnclosureSlot; int SasWwid; } ;
typedef TYPE_1__ Mpi2BiosPage2BootDevice_t ;






 int _scsih_srch_boot_device_name (int ,int *) ;
 int _scsih_srch_boot_encl_slot (int ,int ,int *) ;
 int _scsih_srch_boot_sas_address (int ,int *) ;

__attribute__((used)) static int
_scsih_is_boot_device(u64 sas_address, u64 device_name,
 u64 enclosure_logical_id, u16 slot, u8 form,
 Mpi2BiosPage2BootDevice_t *boot_device)
{
 int rc = 0;

 switch (form) {
 case 128:
  if (!sas_address)
   break;
  rc = _scsih_srch_boot_sas_address(
      sas_address, &boot_device->SasWwid);
  break;
 case 130:
  if (!enclosure_logical_id)
   break;
  rc = _scsih_srch_boot_encl_slot(
      enclosure_logical_id,
      slot, &boot_device->EnclosureSlot);
  break;
 case 131:
  if (!device_name)
   break;
  rc = _scsih_srch_boot_device_name(
      device_name, &boot_device->DeviceName);
  break;
 case 129:
  break;
 }

 return rc;
}
