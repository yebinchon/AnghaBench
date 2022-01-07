
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ configurable_cap; } ;
struct acpi_power_meter_resource {TYPE_1__ caps; } ;


 int POWER_METER_CAN_CAP ;
 int POWER_METER_CAN_MEASURE ;
 int POWER_METER_CAN_TRIP ;
 int meter_ro_attrs ;
 int meter_rw_attrs ;
 int misc_attrs ;
 int misc_cap_attrs ;
 int read_domain_devices (struct acpi_power_meter_resource*) ;
 int register_ro_attrs (struct acpi_power_meter_resource*,int ) ;
 int register_rw_attrs (struct acpi_power_meter_resource*,int ) ;
 int remove_attrs (struct acpi_power_meter_resource*) ;
 int remove_domain_devices (struct acpi_power_meter_resource*) ;
 int ro_cap_attrs ;
 int rw_cap_attrs ;
 int trip_attrs ;

__attribute__((used)) static int setup_attrs(struct acpi_power_meter_resource *resource)
{
 int res = 0;

 res = read_domain_devices(resource);
 if (res)
  return res;

 if (resource->caps.flags & POWER_METER_CAN_MEASURE) {
  res = register_ro_attrs(resource, meter_ro_attrs);
  if (res)
   goto error;
  res = register_rw_attrs(resource, meter_rw_attrs);
  if (res)
   goto error;
 }

 if (resource->caps.flags & POWER_METER_CAN_CAP) {
  if (resource->caps.configurable_cap) {
   res = register_rw_attrs(resource, rw_cap_attrs);
   if (res)
    goto error;
  } else {
   res = register_ro_attrs(resource, ro_cap_attrs);
   if (res)
    goto error;
  }
  res = register_ro_attrs(resource, misc_cap_attrs);
  if (res)
   goto error;
 }

 if (resource->caps.flags & POWER_METER_CAN_TRIP) {
  res = register_rw_attrs(resource, trip_attrs);
  if (res)
   goto error;
 }

 res = register_ro_attrs(resource, misc_attrs);
 if (res)
  goto error;

 return res;
error:
 remove_domain_devices(resource);
 remove_attrs(resource);
 return res;
}
