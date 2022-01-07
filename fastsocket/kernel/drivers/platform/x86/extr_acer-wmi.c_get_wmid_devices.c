
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
typedef int u32 ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int WMID_GUID2 ;
 int wmi_query_block (int ,int,struct acpi_buffer*) ;

__attribute__((used)) static u32 get_wmid_devices(void)
{
 struct acpi_buffer out = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 union acpi_object *obj;
 acpi_status status;

 status = wmi_query_block(WMID_GUID2, 1, &out);
 if (ACPI_FAILURE(status))
  return 0;

 obj = (union acpi_object *) out.pointer;
 if (obj && obj->type == ACPI_TYPE_BUFFER &&
  obj->buffer.length == sizeof(u32)) {
  return *((u32 *) obj->buffer.pointer);
 } else {
  return 0;
 }
}
