
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
typedef scalar_t__ u32 ;
struct acpi_subtable_header {int type; } ;
struct acpi_madt_io_sapic {scalar_t__ global_irq_base; } ;
struct acpi_madt_io_apic {scalar_t__ global_irq_base; } ;
struct acpi_buffer {union acpi_object* pointer; int length; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int kfree (union acpi_object*) ;

__attribute__((used)) static int get_gsi_base(acpi_handle handle, u32 *gsi_base)
{
 acpi_status status;
 int result = -1;
 unsigned long long gsb;
 struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 union acpi_object *obj;
 void *table;

 status = acpi_evaluate_integer(handle, "_GSB", ((void*)0), &gsb);
 if (ACPI_SUCCESS(status)) {
  *gsi_base = (u32)gsb;
  return 0;
 }

 status = acpi_evaluate_object(handle, "_MAT", ((void*)0), &buffer);
 if (ACPI_FAILURE(status) || !buffer.length || !buffer.pointer)
  return -1;

 obj = buffer.pointer;
 if (obj->type != ACPI_TYPE_BUFFER)
  goto out;

 table = obj->buffer.pointer;
 switch (((struct acpi_subtable_header *)table)->type) {
 case 128:
  *gsi_base = ((struct acpi_madt_io_sapic *)table)->global_irq_base;
  result = 0;
  break;
 case 129:
  *gsi_base = ((struct acpi_madt_io_apic *)table)->global_irq_base;
  result = 0;
  break;
 default:
  break;
 }
 out:
 kfree(buffer.pointer);
 return result;
}
