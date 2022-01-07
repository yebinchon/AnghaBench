
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int efi_status_t ;
typedef int efi_capsule_header_t ;
struct TYPE_2__ {scalar_t__ runtime_version; } ;


 scalar_t__ EFI_2_00_SYSTEM_TABLE_REVISION ;
 int EFI_UNSUPPORTED ;
 TYPE_1__ efi ;
 int efi_call_virt3 (int ,int **,unsigned long,unsigned long) ;
 int update_capsule ;

__attribute__((used)) static efi_status_t virt_efi_update_capsule(efi_capsule_header_t **capsules,
         unsigned long count,
         unsigned long sg_list)
{
 if (efi.runtime_version < EFI_2_00_SYSTEM_TABLE_REVISION)
  return EFI_UNSUPPORTED;

 return efi_call_virt3(update_capsule, capsules, count, sg_list);
}
