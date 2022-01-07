
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_handle ;


 int ata_acpi_uevent (void*,int *,int ) ;

__attribute__((used)) static void ata_acpi_ap_uevent(acpi_handle handle, u32 event, void *data)
{
 ata_acpi_uevent(data, ((void*)0), event);
}
