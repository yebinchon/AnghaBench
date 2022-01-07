
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct acpi_evaluate_info {int dummy; } ;
struct acpi_device_walk_info {scalar_t__ device_count; scalar_t__ num_STA; scalar_t__ num_INI; TYPE_1__* evaluate_info; } ;
typedef int acpi_status ;
struct TYPE_4__ {int flags; int * parameters; int pathname; int prefix_node; } ;


 TYPE_1__* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_1__*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IGNORE_RETURN_VALUE ;
 scalar_t__ ACPI_OSI_WIN_2000 ;
 int ACPI_ROOT_OBJECT ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int FALSE ;
 int METHOD_NAME__INI ;
 int TRUE ;
 scalar_t__ acpi_gbl_osi_data ;
 int acpi_gbl_root_node ;
 int acpi_gbl_truncate_io_addresses ;
 int acpi_ns_evaluate (TYPE_1__*) ;
 int acpi_ns_find_ini_methods ;
 int acpi_ns_init_one_device ;
 int acpi_ns_walk_namespace (int ,int ,int ,int ,int ,struct acpi_device_walk_info*,int *) ;
 int ns_initialize_devices ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ns_initialize_devices(void)
{
 acpi_status status;
 struct acpi_device_walk_info info;

 ACPI_FUNCTION_TRACE(ns_initialize_devices);



 info.device_count = 0;
 info.num_STA = 0;
 info.num_INI = 0;

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "Initializing Device/Processor/Thermal objects "
         "by executing _INI methods:"));



 status = acpi_ns_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
     ACPI_UINT32_MAX, FALSE,
     acpi_ns_find_ini_methods, &info, ((void*)0));
 if (ACPI_FAILURE(status)) {
  goto error_exit;
 }



 info.evaluate_info =
     ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_evaluate_info));
 if (!info.evaluate_info) {
  status = AE_NO_MEMORY;
  goto error_exit;
 }






 info.evaluate_info->prefix_node = acpi_gbl_root_node;
 info.evaluate_info->pathname = METHOD_NAME__INI;
 info.evaluate_info->parameters = ((void*)0);
 info.evaluate_info->flags = ACPI_IGNORE_RETURN_VALUE;

 status = acpi_ns_evaluate(info.evaluate_info);
 if (ACPI_SUCCESS(status)) {
  info.num_INI++;
 }



 status = acpi_ns_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
     ACPI_UINT32_MAX, FALSE,
     acpi_ns_init_one_device, &info, ((void*)0));






 if (acpi_gbl_osi_data >= ACPI_OSI_WIN_2000) {
  acpi_gbl_truncate_io_addresses = TRUE;
 }

 ACPI_FREE(info.evaluate_info);
 if (ACPI_FAILURE(status)) {
  goto error_exit;
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "\nExecuted %hd _INI methods requiring %hd _STA executions "
         "(examined %hd objects)\n",
         info.num_INI, info.num_STA, info.device_count));

 return_ACPI_STATUS(status);

      error_exit:
 ACPI_EXCEPTION((AE_INFO, status, "During device initialization"));
 return_ACPI_STATUS(status);
}
