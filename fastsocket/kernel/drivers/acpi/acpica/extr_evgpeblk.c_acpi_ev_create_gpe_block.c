
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
struct acpi_gpe_block_info {int register_count; int block_base_number; int block_address; struct acpi_namespace_node* node; } ;
struct acpi_generic_address {int dummy; } ;
typedef int acpi_status ;


 struct acpi_gpe_block_info* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (struct acpi_gpe_block_info*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_REGISTER_WIDTH ;
 int ACPI_MEMCPY (int *,struct acpi_generic_address*,int) ;
 int ACPI_NS_WALK_NO_UNLOCK ;
 int ACPI_TYPE_METHOD ;
 int ACPI_UINT32_MAX ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_current_gpe_count ;
 int acpi_ev_create_gpe_info_blocks (struct acpi_gpe_block_info*) ;
 int acpi_ev_install_gpe_block (struct acpi_gpe_block_info*,int) ;
 int acpi_ev_save_method_info ;
 int acpi_ns_walk_namespace (int ,struct acpi_namespace_node*,int ,int ,int ,struct acpi_gpe_block_info*,int *) ;
 int ev_create_gpe_block ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_create_gpe_block(struct acpi_namespace_node *gpe_device,
    struct acpi_generic_address *gpe_block_address,
    u32 register_count,
    u8 gpe_block_base_number,
    u32 interrupt_number,
    struct acpi_gpe_block_info **return_gpe_block)
{
 acpi_status status;
 struct acpi_gpe_block_info *gpe_block;

 ACPI_FUNCTION_TRACE(ev_create_gpe_block);

 if (!register_count) {
  return_ACPI_STATUS(AE_OK);
 }



 gpe_block = ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_gpe_block_info));
 if (!gpe_block) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 gpe_block->node = gpe_device;
 gpe_block->register_count = register_count;
 gpe_block->block_base_number = gpe_block_base_number;

 ACPI_MEMCPY(&gpe_block->block_address, gpe_block_address,
      sizeof(struct acpi_generic_address));





 status = acpi_ev_create_gpe_info_blocks(gpe_block);
 if (ACPI_FAILURE(status)) {
  ACPI_FREE(gpe_block);
  return_ACPI_STATUS(status);
 }



 status = acpi_ev_install_gpe_block(gpe_block, interrupt_number);
 if (ACPI_FAILURE(status)) {
  ACPI_FREE(gpe_block);
  return_ACPI_STATUS(status);
 }



 status = acpi_ns_walk_namespace(ACPI_TYPE_METHOD, gpe_device,
     ACPI_UINT32_MAX, ACPI_NS_WALK_NO_UNLOCK,
     acpi_ev_save_method_info, gpe_block,
     ((void*)0));



 if (return_gpe_block) {
  (*return_gpe_block) = gpe_block;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INIT,
     "GPE %02X to %02X [%4.4s] %u regs on int 0x%X\n",
     (u32) gpe_block->block_base_number,
     (u32) (gpe_block->block_base_number +
     ((gpe_block->register_count *
       ACPI_GPE_REGISTER_WIDTH) - 1)),
     gpe_device->name.ascii, gpe_block->register_count,
     interrupt_number));



 acpi_current_gpe_count += register_count * ACPI_GPE_REGISTER_WIDTH;
 return_ACPI_STATUS(AE_OK);
}
