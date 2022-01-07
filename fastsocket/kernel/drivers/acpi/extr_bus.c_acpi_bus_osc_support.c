
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* pointer; size_t length; } ;
struct TYPE_3__ {int length; int* pointer; } ;
struct acpi_osc_context {int rev; TYPE_2__ ret; TYPE_1__ cap; int uuid_str; } ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int OSC_QUERY_ENABLE ;
 size_t OSC_QUERY_TYPE ;
 int OSC_SB_APEI_SUPPORT ;
 int OSC_SB_HOTPLUG_OST_SUPPORT ;
 int OSC_SB_PAD_SUPPORT ;
 int OSC_SB_PPC_OST_SUPPORT ;
 int OSC_SB_PR3_SUPPORT ;
 size_t OSC_SUPPORT_TYPE ;
 int acpi_get_handle (int *,char*,int *) ;
 int acpi_run_osc (int ,struct acpi_osc_context*) ;
 int ghes_disable ;
 scalar_t__ is_kdump_kernel () ;
 scalar_t__ is_uv_system () ;
 int kfree (int*) ;
 int osc_sb_apei_support_acked ;
 int sb_uuid_str ;

__attribute__((used)) static void acpi_bus_osc_support(void)
{
 u32 capbuf[2];
 struct acpi_osc_context context = {
  .uuid_str = sb_uuid_str,
  .rev = 1,
  .cap.length = 8,
  .cap.pointer = capbuf,
 };
 acpi_handle handle;

 capbuf[OSC_QUERY_TYPE] = OSC_QUERY_ENABLE;
 capbuf[OSC_SUPPORT_TYPE] = OSC_SB_PR3_SUPPORT;
 if (!ghes_disable)
  capbuf[OSC_SUPPORT_TYPE] |= OSC_SB_APEI_SUPPORT;
 if (ACPI_FAILURE(acpi_get_handle(((void*)0), "\\_SB", &handle)))
  return;

 if (is_uv_system() && is_kdump_kernel()) {






  return;
 }

 if (ACPI_SUCCESS(acpi_run_osc(handle, &context))) {
  u32 *capbuf_ret = context.ret.pointer;
  if (context.ret.length > OSC_SUPPORT_TYPE)
   osc_sb_apei_support_acked =
    capbuf_ret[OSC_SUPPORT_TYPE] & OSC_SB_APEI_SUPPORT;
  kfree(context.ret.pointer);
 }

}
