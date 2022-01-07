
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t acpi_object_type ;


 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int ACPI_NS_NEWSCOPE ;
 int ACPI_NS_NORMAL ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 scalar_t__* acpi_gbl_ns_properties ;
 int acpi_ut_get_type_name (size_t) ;
 int acpi_ut_valid_object_type (size_t) ;
 int ns_opens_scope ;
 int return_UINT32 (int) ;

u32 acpi_ns_opens_scope(acpi_object_type type)
{
 ACPI_FUNCTION_TRACE_STR(ns_opens_scope, acpi_ut_get_type_name(type));

 if (!acpi_ut_valid_object_type(type)) {



  ACPI_WARNING((AE_INFO, "Invalid Object Type %X", type));
  return_UINT32(ACPI_NS_NORMAL);
 }

 return_UINT32(((u32) acpi_gbl_ns_properties[type]) & ACPI_NS_NEWSCOPE);
}
