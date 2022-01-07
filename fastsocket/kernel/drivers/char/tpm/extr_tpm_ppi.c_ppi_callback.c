
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_buffer {int pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef void* acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_FULL_PATHNAME ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int acpi_get_name (void*,int ,struct acpi_buffer*) ;
 int kfree (int ) ;
 int * strstr (int ,void*) ;

__attribute__((used)) static acpi_status ppi_callback(acpi_handle handle, u32 level, void *context,
    void **return_value)
{
 acpi_status status;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 status = acpi_get_name(handle, ACPI_FULL_PATHNAME, &buffer);
 if (strstr(buffer.pointer, context) != ((void*)0)) {
  *return_value = handle;
  kfree(buffer.pointer);
  return AE_CTRL_TERMINATE;
 }
 return AE_OK;
}
