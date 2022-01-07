
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct acpi_gpe_xrupt_info {int dummy; } ;
struct TYPE_2__ {int * handler; } ;
struct acpi_gpe_event_info {int flags; TYPE_1__ dispatch; } ;
struct acpi_gpe_block_info {scalar_t__ register_count; struct acpi_gpe_event_info* event_info; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 int ACPI_FREE (int *) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_DISPATCH_HANDLER ;
 int ACPI_GPE_DISPATCH_MASK ;
 scalar_t__ ACPI_GPE_REGISTER_WIDTH ;
 int AE_OK ;
 int ev_delete_gpe_handlers ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_delete_gpe_handlers(struct acpi_gpe_xrupt_info *gpe_xrupt_info,
       struct acpi_gpe_block_info *gpe_block,
       void *context)
{
 struct acpi_gpe_event_info *gpe_event_info;
 u32 i;
 u32 j;

 ACPI_FUNCTION_TRACE(ev_delete_gpe_handlers);



 for (i = 0; i < gpe_block->register_count; i++) {



  for (j = 0; j < ACPI_GPE_REGISTER_WIDTH; j++) {
   gpe_event_info = &gpe_block->event_info[((acpi_size) i *
         ACPI_GPE_REGISTER_WIDTH)
        + j];

   if ((gpe_event_info->flags & ACPI_GPE_DISPATCH_MASK) ==
       ACPI_GPE_DISPATCH_HANDLER) {
    ACPI_FREE(gpe_event_info->dispatch.handler);
    gpe_event_info->dispatch.handler = ((void*)0);
    gpe_event_info->flags &=
        ~ACPI_GPE_DISPATCH_MASK;
   }
  }
 }

 return_ACPI_STATUS(AE_OK);
}
