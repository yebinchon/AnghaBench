
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_size ;
typedef int acpi_physical_address ;


 int ACPI_EBDA_PTR_LENGTH ;
 scalar_t__ ACPI_EBDA_PTR_LOCATION ;
 int ACPI_EBDA_WINDOW_SIZE ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) (int*)) ;
 scalar_t__ ACPI_HI_RSDP_WINDOW_BASE ;
 int ACPI_HI_RSDP_WINDOW_SIZE ;
 int ACPI_MOVE_16_TO_32 (int*,int *) ;
 scalar_t__ ACPI_PTR_DIFF (int *,int *) ;
 int AE_INFO ;
 int AE_NOT_FOUND ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int * acpi_os_map_memory (int ,int ) ;
 int acpi_os_unmap_memory (int *,int ) ;
 int * acpi_tb_scan_memory_for_rsdp (int *,int ) ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_find_root_pointer(acpi_size *table_address)
{
 u8 *table_ptr;
 u8 *mem_rover;
 u32 physical_address;

 ACPI_FUNCTION_TRACE(acpi_find_root_pointer);



 table_ptr = acpi_os_map_memory((acpi_physical_address)
           ACPI_EBDA_PTR_LOCATION,
           ACPI_EBDA_PTR_LENGTH);
 if (!table_ptr) {
  ACPI_ERROR((AE_INFO,
       "Could not map memory at %8.8X for length %X",
       ACPI_EBDA_PTR_LOCATION, ACPI_EBDA_PTR_LENGTH));

  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 ACPI_MOVE_16_TO_32(&physical_address, table_ptr);



 physical_address <<= 4;
 acpi_os_unmap_memory(table_ptr, ACPI_EBDA_PTR_LENGTH);



 if (physical_address > 0x400) {




  table_ptr = acpi_os_map_memory((acpi_physical_address)
            physical_address,
            ACPI_EBDA_WINDOW_SIZE);
  if (!table_ptr) {
   ACPI_ERROR((AE_INFO,
        "Could not map memory at %8.8X for length %X",
        physical_address, ACPI_EBDA_WINDOW_SIZE));

   return_ACPI_STATUS(AE_NO_MEMORY);
  }

  mem_rover =
      acpi_tb_scan_memory_for_rsdp(table_ptr,
       ACPI_EBDA_WINDOW_SIZE);
  acpi_os_unmap_memory(table_ptr, ACPI_EBDA_WINDOW_SIZE);

  if (mem_rover) {



   physical_address +=
       (u32) ACPI_PTR_DIFF(mem_rover, table_ptr);

   *table_address = physical_address;
   return_ACPI_STATUS(AE_OK);
  }
 }




 table_ptr = acpi_os_map_memory((acpi_physical_address)
           ACPI_HI_RSDP_WINDOW_BASE,
           ACPI_HI_RSDP_WINDOW_SIZE);

 if (!table_ptr) {
  ACPI_ERROR((AE_INFO,
       "Could not map memory at %8.8X for length %X",
       ACPI_HI_RSDP_WINDOW_BASE,
       ACPI_HI_RSDP_WINDOW_SIZE));

  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 mem_rover =
     acpi_tb_scan_memory_for_rsdp(table_ptr, ACPI_HI_RSDP_WINDOW_SIZE);
 acpi_os_unmap_memory(table_ptr, ACPI_HI_RSDP_WINDOW_SIZE);

 if (mem_rover) {



  physical_address = (u32)
      (ACPI_HI_RSDP_WINDOW_BASE +
       ACPI_PTR_DIFF(mem_rover, table_ptr));

  *table_address = physical_address;
  return_ACPI_STATUS(AE_OK);
 }



 ACPI_ERROR((AE_INFO, "A valid RSDP was not found"));
 return_ACPI_STATUS(AE_NOT_FOUND);
}
