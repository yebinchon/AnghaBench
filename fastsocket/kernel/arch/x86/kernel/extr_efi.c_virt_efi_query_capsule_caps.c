
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int efi_status_t ;
typedef int efi_capsule_header_t ;
struct TYPE_2__ {scalar_t__ runtime_version; } ;


 scalar_t__ EFI_2_00_SYSTEM_TABLE_REVISION ;
 int EFI_UNSUPPORTED ;
 TYPE_1__ efi ;
 int efi_call_virt4 (int ,int **,unsigned long,int *,int*) ;
 int query_capsule_caps ;

__attribute__((used)) static efi_status_t virt_efi_query_capsule_caps(efi_capsule_header_t **capsules,
      unsigned long count,
      u64 *max_size,
      int *reset_type)
{
 if (efi.runtime_version < EFI_2_00_SYSTEM_TABLE_REVISION)
  return EFI_UNSUPPORTED;

 return efi_call_virt4(query_capsule_caps, capsules, count, max_size,
         reset_type);
}
