
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpe_xrupt_info {struct acpi_gpe_xrupt_info* next; struct acpi_gpe_xrupt_info* register_info; struct acpi_gpe_xrupt_info* event_info; struct acpi_gpe_xrupt_info* gpe_block_list_head; } ;
struct acpi_gpe_block_info {struct acpi_gpe_block_info* next; struct acpi_gpe_block_info* register_info; struct acpi_gpe_block_info* event_info; struct acpi_gpe_block_info* gpe_block_list_head; } ;


 int ACPI_FREE (struct acpi_gpe_xrupt_info*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 struct acpi_gpe_xrupt_info* acpi_gbl_gpe_xrupt_list_head ;
 int return_VOID ;
 int ut_terminate ;

__attribute__((used)) static void acpi_ut_terminate(void)
{
 struct acpi_gpe_block_info *gpe_block;
 struct acpi_gpe_block_info *next_gpe_block;
 struct acpi_gpe_xrupt_info *gpe_xrupt_info;
 struct acpi_gpe_xrupt_info *next_gpe_xrupt_info;

 ACPI_FUNCTION_TRACE(ut_terminate);



 gpe_xrupt_info = acpi_gbl_gpe_xrupt_list_head;
 while (gpe_xrupt_info) {
  gpe_block = gpe_xrupt_info->gpe_block_list_head;
  while (gpe_block) {
   next_gpe_block = gpe_block->next;
   ACPI_FREE(gpe_block->event_info);
   ACPI_FREE(gpe_block->register_info);
   ACPI_FREE(gpe_block);

   gpe_block = next_gpe_block;
  }
  next_gpe_xrupt_info = gpe_xrupt_info->next;
  ACPI_FREE(gpe_xrupt_info);
  gpe_xrupt_info = next_gpe_xrupt_info;
 }

 return_VOID;
}
