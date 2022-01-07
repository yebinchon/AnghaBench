
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_gpe_xrupt_info {int dummy; } ;
struct acpi_gpe_block_info {size_t register_count; TYPE_1__* register_info; } ;
typedef int acpi_status ;
struct TYPE_2__ {int enable_address; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_hw_write (int,int *) ;

acpi_status
acpi_hw_disable_gpe_block(struct acpi_gpe_xrupt_info *gpe_xrupt_info,
     struct acpi_gpe_block_info *gpe_block, void *context)
{
 u32 i;
 acpi_status status;



 for (i = 0; i < gpe_block->register_count; i++) {



  status =
      acpi_hw_write(0x00,
      &gpe_block->register_info[i].enable_address);
  if (ACPI_FAILURE(status)) {
   return (status);
  }
 }

 return (AE_OK);
}
