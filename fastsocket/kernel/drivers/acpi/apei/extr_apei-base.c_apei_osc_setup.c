
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char u8 ;
typedef int u32 ;
struct TYPE_3__ {int pointer; } ;
struct TYPE_4__ {int length; int* pointer; } ;
struct acpi_osc_context {char* uuid_str; int rev; TYPE_1__ ret; TYPE_2__ cap; } ;
typedef int capbuf ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 size_t OSC_CONTROL_TYPE ;
 int OSC_QUERY_ENABLE ;
 size_t OSC_QUERY_TYPE ;
 size_t OSC_SUPPORT_TYPE ;
 int acpi_get_handle (int *,char*,int *) ;
 int acpi_run_osc (int ,struct acpi_osc_context*) ;
 int kfree (int ) ;

int apei_osc_setup(void)
{
 static u8 whea_uuid_str[] = "ed855e0c-6c90-47bf-a62a-26de0fc5ad5c";
 acpi_handle handle;
 u32 capbuf[3];
 struct acpi_osc_context context = {
  .uuid_str = whea_uuid_str,
  .rev = 1,
  .cap.length = sizeof(capbuf),
  .cap.pointer = capbuf,
 };

 capbuf[OSC_QUERY_TYPE] = OSC_QUERY_ENABLE;
 capbuf[OSC_SUPPORT_TYPE] = 1;
 capbuf[OSC_CONTROL_TYPE] = 0;

 if (ACPI_FAILURE(acpi_get_handle(((void*)0), "\\_SB", &handle))
     || ACPI_FAILURE(acpi_run_osc(handle, &context)))
  return -EIO;
 else {
  kfree(context.ret.pointer);
  return 0;
 }
}
