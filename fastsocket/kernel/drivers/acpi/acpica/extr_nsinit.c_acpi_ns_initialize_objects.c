
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_init_walk_info {int op_region_count; int method_count; int object_count; int package_count; int package_init; int buffer_count; int buffer_init; int field_count; int field_init; int op_region_init; } ;
typedef int acpi_status ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MEMSET (struct acpi_init_walk_info*,int ,int) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_init_one_object ;
 int acpi_walk_namespace (int ,int ,int ,int ,struct acpi_init_walk_info*,int *) ;
 int ns_initialize_objects ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ns_initialize_objects(void)
{
 acpi_status status;
 struct acpi_init_walk_info info;

 ACPI_FUNCTION_TRACE(ns_initialize_objects);

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "**** Starting initialization of namespace objects ****\n"));
 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "Completing Region/Field/Buffer/Package initialization:"));



 ACPI_MEMSET(&info, 0, sizeof(struct acpi_init_walk_info));



 status = acpi_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
         ACPI_UINT32_MAX, acpi_ns_init_one_object,
         &info, ((void*)0));
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "During WalkNamespace"));
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "\nInitialized %hd/%hd Regions %hd/%hd Fields %hd/%hd "
         "Buffers %hd/%hd Packages (%hd nodes)\n",
         info.op_region_init, info.op_region_count,
         info.field_init, info.field_count,
         info.buffer_init, info.buffer_count,
         info.package_init, info.package_count,
         info.object_count));

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "%hd Control Methods found\n", info.method_count));
 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "%hd Op Regions found\n", info.op_region_count));

 return_ACPI_STATUS(AE_OK);
}
