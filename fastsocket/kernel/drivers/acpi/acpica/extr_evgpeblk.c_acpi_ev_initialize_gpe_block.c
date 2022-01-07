
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_gpe_walk_info {struct acpi_namespace_node* gpe_device; struct acpi_gpe_block_info* gpe_block; } ;
struct acpi_gpe_event_info {int flags; } ;
struct acpi_gpe_block_info {scalar_t__ register_count; struct acpi_gpe_event_info* event_info; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_DISPATCH_MASK ;
 int ACPI_GPE_DISPATCH_METHOD ;
 scalar_t__ ACPI_GPE_REGISTER_WIDTH ;
 int ACPI_GPE_TYPE_RUNTIME ;
 int ACPI_GPE_TYPE_WAKE ;
 int ACPI_NS_WALK_UNLOCK ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ev_match_prw_and_gpe ;
 scalar_t__ acpi_gbl_leave_wake_gpes_disabled ;
 int acpi_hw_enable_runtime_gpe_block (int *,struct acpi_gpe_block_info*,int *) ;
 int acpi_ns_walk_namespace (int ,int ,int ,int ,int ,struct acpi_gpe_walk_info*,int *) ;
 int ev_initialize_gpe_block ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_initialize_gpe_block(struct acpi_namespace_node *gpe_device,
        struct acpi_gpe_block_info *gpe_block)
{
 acpi_status status;
 struct acpi_gpe_event_info *gpe_event_info;
 struct acpi_gpe_walk_info gpe_info;
 u32 wake_gpe_count;
 u32 gpe_enabled_count;
 u32 i;
 u32 j;

 ACPI_FUNCTION_TRACE(ev_initialize_gpe_block);



 if (!gpe_block) {
  return_ACPI_STATUS(AE_OK);
 }





 if (acpi_gbl_leave_wake_gpes_disabled) {






  gpe_info.gpe_block = gpe_block;
  gpe_info.gpe_device = gpe_device;

  status =
      acpi_ns_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, ACPI_NS_WALK_UNLOCK,
        acpi_ev_match_prw_and_gpe, &gpe_info,
        ((void*)0));
 }
 wake_gpe_count = 0;
 gpe_enabled_count = 0;

 for (i = 0; i < gpe_block->register_count; i++) {
  for (j = 0; j < 8; j++) {



   gpe_event_info = &gpe_block->event_info[((acpi_size) i *
         ACPI_GPE_REGISTER_WIDTH)
        + j];

   if (((gpe_event_info->flags & ACPI_GPE_DISPATCH_MASK) ==
        ACPI_GPE_DISPATCH_METHOD) &&
       (gpe_event_info->flags & ACPI_GPE_TYPE_RUNTIME)) {
    gpe_enabled_count++;
   }

   if (gpe_event_info->flags & ACPI_GPE_TYPE_WAKE) {
    wake_gpe_count++;
   }
  }
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INIT,
     "Found %u Wake, Enabled %u Runtime GPEs in this block\n",
     wake_gpe_count, gpe_enabled_count));



 status = acpi_hw_enable_runtime_gpe_block(((void*)0), gpe_block, ((void*)0));
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO, "Could not enable GPEs in GpeBlock %p",
       gpe_block));
 }

 return_ACPI_STATUS(status);
}
