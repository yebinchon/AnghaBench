
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int efi_status_t ;
struct TYPE_2__ {scalar_t__ runtime_version; } ;


 scalar_t__ EFI_2_00_SYSTEM_TABLE_REVISION ;
 int EFI_UNSUPPORTED ;
 TYPE_1__ efi ;
 int efi_call_virt4 (int ,int ,int *,int *,int *) ;
 int query_variable_info ;

__attribute__((used)) static efi_status_t virt_efi_query_variable_info(u32 attr,
       u64 *storage_space,
       u64 *remaining_space,
       u64 *max_variable_size)
{
 if (efi.runtime_version < EFI_2_00_SYSTEM_TABLE_REVISION)
  return EFI_UNSUPPORTED;

 return efi_call_virt4(query_variable_info, attr, storage_space,
         remaining_space, max_variable_size);
}
