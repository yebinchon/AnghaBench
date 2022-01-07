
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 int acpi_walk_namespace (int ,int ,int ,int (*) (int ,int ,int *,int *),int *,int *) ;
 int ioapic_add (int ,int ,int *,int *) ;

__attribute__((used)) static int acpiphp_configure_ioapics(acpi_handle handle)
{
 ioapic_add(handle, 0, ((void*)0), ((void*)0));
 acpi_walk_namespace(ACPI_TYPE_DEVICE, handle,
       ACPI_UINT32_MAX, ioapic_add, ((void*)0), ((void*)0));
 return 0;
}
