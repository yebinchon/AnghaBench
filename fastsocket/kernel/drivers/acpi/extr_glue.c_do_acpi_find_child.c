
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
typedef int acpi_status ;
typedef void* acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int METHOD_NAME__ADR ;
 int acpi_evaluate_integer (void*,int ,int *,unsigned long long*) ;

__attribute__((used)) static acpi_status do_acpi_find_child(acpi_handle handle, u32 lvl_not_used,
          void *addr_p, void **ret_p)
{
 unsigned long long addr;
 acpi_status status;

 status = acpi_evaluate_integer(handle, METHOD_NAME__ADR, ((void*)0), &addr);
 if (ACPI_SUCCESS(status) && addr == *((u64 *)addr_p)) {
  *ret_p = handle;
  return AE_CTRL_TERMINATE;
 }
 return AE_OK;
}
