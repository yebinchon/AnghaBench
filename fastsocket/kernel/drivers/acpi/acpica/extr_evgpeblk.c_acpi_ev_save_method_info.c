
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int integer; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
struct TYPE_4__ {struct acpi_namespace_node* method_node; } ;
struct acpi_gpe_event_info {int flags; TYPE_2__ dispatch; } ;
struct acpi_gpe_block_info {scalar_t__ block_base_number; int register_count; struct acpi_gpe_event_info* event_info; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 int ACPI_DB_LOAD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_DISPATCH_METHOD ;
 int ACPI_GPE_EDGE_TRIGGERED ;
 int ACPI_GPE_LEVEL_TRIGGERED ;
 int ACPI_GPE_TYPE_RUNTIME ;
 int ACPI_MOVE_32_TO_32 (char*,int *) ;
 int ACPI_NAME_SIZE ;
 scalar_t__ ACPI_STRTOUL (char*,int *,int) ;
 scalar_t__ ACPI_UINT32_MAX ;
 int AE_OK ;
 int FALSE ;
 int acpi_ev_enable_gpe (struct acpi_gpe_event_info*,int ) ;
 int ev_save_method_info ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ev_save_method_info(acpi_handle obj_handle,
    u32 level, void *obj_desc, void **return_value)
{
 struct acpi_gpe_block_info *gpe_block = (void *)obj_desc;
 struct acpi_gpe_event_info *gpe_event_info;
 u32 gpe_number;
 char name[ACPI_NAME_SIZE + 1];
 u8 type;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_save_method_info);






 ACPI_MOVE_32_TO_32(name,
      &((struct acpi_namespace_node *)obj_handle)->name.
      integer);
 name[ACPI_NAME_SIZE] = 0;
 switch (name[1]) {
 case 'L':
  type = ACPI_GPE_LEVEL_TRIGGERED;
  break;

 case 'E':
  type = ACPI_GPE_EDGE_TRIGGERED;
  break;

 default:


  ACPI_DEBUG_PRINT((ACPI_DB_LOAD,
      "Ignoring unknown GPE method type: %s "
      "(name not of form _Lxx or _Exx)", name));
  return_ACPI_STATUS(AE_OK);
 }



 gpe_number = ACPI_STRTOUL(&name[2], ((void*)0), 16);
 if (gpe_number == ACPI_UINT32_MAX) {



  ACPI_DEBUG_PRINT((ACPI_DB_LOAD,
      "Could not extract GPE number from name: %s "
      "(name is not of form _Lxx or _Exx)", name));
  return_ACPI_STATUS(AE_OK);
 }



 if ((gpe_number < gpe_block->block_base_number) ||
     (gpe_number >= (gpe_block->block_base_number +
       (gpe_block->register_count * 8)))) {





  return_ACPI_STATUS(AE_OK);
 }






 gpe_event_info =
     &gpe_block->event_info[gpe_number - gpe_block->block_base_number];

 gpe_event_info->flags = (u8)
     (type | ACPI_GPE_DISPATCH_METHOD | ACPI_GPE_TYPE_RUNTIME);

 gpe_event_info->dispatch.method_node =
     (struct acpi_namespace_node *)obj_handle;



 status = acpi_ev_enable_gpe(gpe_event_info, FALSE);

 ACPI_DEBUG_PRINT((ACPI_DB_LOAD,
     "Registered GPE method %s as GPE number 0x%.2X\n",
     name, gpe_number));
 return_ACPI_STATUS(status);
}
