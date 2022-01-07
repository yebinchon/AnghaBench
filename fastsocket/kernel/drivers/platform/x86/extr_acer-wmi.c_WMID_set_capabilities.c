
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
typedef int u32 ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
struct TYPE_4__ {int capability; } ;


 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_BRIGHTNESS ;
 int ACER_CAP_THREEG ;
 int ACER_CAP_WIRELESS ;
 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int AE_ERROR ;
 int WMID_GUID2 ;
 TYPE_2__* interface ;
 int max_brightness ;
 int wmi_query_block (int ,int,struct acpi_buffer*) ;

__attribute__((used)) static acpi_status WMID_set_capabilities(void)
{
 struct acpi_buffer out = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 union acpi_object *obj;
 acpi_status status;
 u32 devices;

 status = wmi_query_block(WMID_GUID2, 1, &out);
 if (ACPI_FAILURE(status))
  return status;

 obj = (union acpi_object *) out.pointer;
 if (obj && obj->type == ACPI_TYPE_BUFFER &&
  obj->buffer.length == sizeof(u32)) {
  devices = *((u32 *) obj->buffer.pointer);
 } else {
  return AE_ERROR;
 }


 interface->capability |= ACER_CAP_WIRELESS;
 interface->capability |= ACER_CAP_THREEG;


 interface->capability |= ACER_CAP_BRIGHTNESS;

 if (devices & 0x10)
  interface->capability |= ACER_CAP_BLUETOOTH;

 if (!(devices & 0x20))
  max_brightness = 0x9;

 return status;
}
