
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union acpi_object {int dummy; } acpi_object ;
typedef int u8 ;
struct TYPE_2__ {scalar_t__ power_cntl; } ;
struct radeon_atpx {int handle; TYPE_1__ functions; } ;
struct atpx_power_control {int size; int dgpu_state; } ;
struct acpi_buffer {int length; struct atpx_power_control* pointer; } ;


 int ATPX_FUNCTION_POWER_CONTROL ;
 int EIO ;
 int kfree (union acpi_object*) ;
 union acpi_object* radeon_atpx_call (int ,int ,struct acpi_buffer*) ;

__attribute__((used)) static int radeon_atpx_set_discrete_state(struct radeon_atpx *atpx, u8 state)
{
 struct acpi_buffer params;
 union acpi_object *info;
 struct atpx_power_control input;

 if (atpx->functions.power_cntl) {
  input.size = 3;
  input.dgpu_state = state;
  params.length = input.size;
  params.pointer = &input;
  info = radeon_atpx_call(atpx->handle,
     ATPX_FUNCTION_POWER_CONTROL,
     &params);
  if (!info)
   return -EIO;
  kfree(info);
 }
 return 0;
}
