
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_4__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_3__ integer; TYPE_1__ package; } ;
struct TYPE_5__ {int revision; int enable_perr; int enable_serr; int latency_timer; int cache_line_size; } ;
struct hotplug_params {TYPE_2__* t0; TYPE_2__ type0_data; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_ERROR ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int kfree (scalar_t__) ;
 int memset (struct hotplug_params*,int ,int) ;

__attribute__((used)) static acpi_status
acpi_run_hpp(acpi_handle handle, struct hotplug_params *hpp)
{
 acpi_status status;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *package, *fields;
 int i;

 memset(hpp, 0, sizeof(struct hotplug_params));

 status = acpi_evaluate_object(handle, "_HPP", ((void*)0), &buffer);
 if (ACPI_FAILURE(status))
  return status;

 package = (union acpi_object *) buffer.pointer;
 if (package->type != ACPI_TYPE_PACKAGE ||
     package->package.count != 4) {
  status = AE_ERROR;
  goto exit;
 }

 fields = package->package.elements;
 for (i = 0; i < 4; i++) {
  if (fields[i].type != ACPI_TYPE_INTEGER) {
   status = AE_ERROR;
   goto exit;
  }
 }

 hpp->t0 = &hpp->type0_data;
 hpp->t0->revision = 1;
 hpp->t0->cache_line_size = fields[0].integer.value;
 hpp->t0->latency_timer = fields[1].integer.value;
 hpp->t0->enable_serr = fields[2].integer.value;
 hpp->t0->enable_perr = fields[3].integer.value;

exit:
 kfree(buffer.pointer);
 return status;
}
