
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
typedef int acpi_status ;
struct TYPE_10__ {int * handler; } ;
struct TYPE_9__ {scalar_t__ use_count; int thread_id; int * mutex; } ;
struct TYPE_6__ {int integer; } ;
struct TYPE_8__ {int * object; int * peer; int * child; int * parent; int type; int descriptor_type; TYPE_1__ name; } ;
struct TYPE_7__ {int * handler; } ;


 int ACPI_CAST_PTR (int ,int ) ;
 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MUTEX_NOT_ACQUIRED ;
 size_t ACPI_NUM_MUTEX ;
 size_t ACPI_NUM_OWNERID_MASKS ;
 int ACPI_ROOT_NAME ;
 int ACPI_SIZE_MAX ;
 int ACPI_TYPE_DEVICE ;
 int AE_OK ;
 int DEBUGGER_THREADING ;
 void* FALSE ;
 void* TRUE ;
 scalar_t__ acpi_current_gpe_count ;
 void* acpi_gbl_acpi_hardware_present ;
 void* acpi_gbl_cm_single_step ;
 int acpi_gbl_db_output_flags ;
 void* acpi_gbl_db_terminate_threads ;
 int acpi_gbl_debugger_configuration ;
 TYPE_5__ acpi_gbl_device_notify ;
 void* acpi_gbl_display_final_mem_stats ;
 void* acpi_gbl_events_initialized ;
 int * acpi_gbl_exception_handler ;
 void* acpi_gbl_global_lock_acquired ;
 scalar_t__ acpi_gbl_global_lock_handle ;
 int * acpi_gbl_global_lock_mutex ;
 void* acpi_gbl_global_lock_present ;
 int * acpi_gbl_global_lock_semaphore ;
 int ** acpi_gbl_gpe_fadt_blocks ;
 int * acpi_gbl_gpe_xrupt_list_head ;
 int * acpi_gbl_init_handler ;
 scalar_t__ acpi_gbl_last_owner_id_index ;
 int acpi_gbl_lowest_stack_pointer ;
 int * acpi_gbl_module_code_list ;
 TYPE_4__* acpi_gbl_mutex_info ;
 scalar_t__ acpi_gbl_next_owner_id_offset ;
 scalar_t__ acpi_gbl_ns_lookup_count ;
 scalar_t__ acpi_gbl_osi_data ;
 int* acpi_gbl_owner_id_mask ;
 scalar_t__ acpi_gbl_ps_find_count ;
 int * acpi_gbl_root_node ;
 TYPE_3__ acpi_gbl_root_node_struct ;
 void* acpi_gbl_shutdown ;
 void* acpi_gbl_system_awake_and_running ;
 TYPE_2__ acpi_gbl_system_notify ;
 int * acpi_gbl_table_handler ;
 scalar_t__ acpi_gbl_trace_dbg_layer ;
 scalar_t__ acpi_gbl_trace_dbg_level ;
 scalar_t__ acpi_gbl_trace_method_name ;
 int acpi_size ;
 int acpi_ut_create_caches () ;
 int return_ACPI_STATUS (int ) ;
 int ut_init_globals ;

acpi_status acpi_ut_init_globals(void)
{
 acpi_status status;
 u32 i;

 ACPI_FUNCTION_TRACE(ut_init_globals);



 status = acpi_ut_create_caches();
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 for (i = 0; i < ACPI_NUM_MUTEX; i++) {
  acpi_gbl_mutex_info[i].mutex = ((void*)0);
  acpi_gbl_mutex_info[i].thread_id = ACPI_MUTEX_NOT_ACQUIRED;
  acpi_gbl_mutex_info[i].use_count = 0;
 }

 for (i = 0; i < ACPI_NUM_OWNERID_MASKS; i++) {
  acpi_gbl_owner_id_mask[i] = 0;
 }



 acpi_gbl_owner_id_mask[ACPI_NUM_OWNERID_MASKS - 1] = 0x80000000;



 acpi_gbl_gpe_xrupt_list_head = ((void*)0);
 acpi_gbl_gpe_fadt_blocks[0] = ((void*)0);
 acpi_gbl_gpe_fadt_blocks[1] = ((void*)0);
 acpi_current_gpe_count = 0;



 acpi_gbl_system_notify.handler = ((void*)0);
 acpi_gbl_device_notify.handler = ((void*)0);
 acpi_gbl_exception_handler = ((void*)0);
 acpi_gbl_init_handler = ((void*)0);
 acpi_gbl_table_handler = ((void*)0);



 acpi_gbl_global_lock_semaphore = ((void*)0);
 acpi_gbl_global_lock_mutex = ((void*)0);
 acpi_gbl_global_lock_acquired = FALSE;
 acpi_gbl_global_lock_handle = 0;
 acpi_gbl_global_lock_present = FALSE;



 acpi_gbl_cm_single_step = FALSE;
 acpi_gbl_db_terminate_threads = FALSE;
 acpi_gbl_shutdown = FALSE;
 acpi_gbl_ns_lookup_count = 0;
 acpi_gbl_ps_find_count = 0;
 acpi_gbl_acpi_hardware_present = TRUE;
 acpi_gbl_last_owner_id_index = 0;
 acpi_gbl_next_owner_id_offset = 0;
 acpi_gbl_trace_method_name = 0;
 acpi_gbl_trace_dbg_level = 0;
 acpi_gbl_trace_dbg_layer = 0;
 acpi_gbl_debugger_configuration = DEBUGGER_THREADING;
 acpi_gbl_db_output_flags = ACPI_DB_CONSOLE_OUTPUT;
 acpi_gbl_osi_data = 0;



 acpi_gbl_events_initialized = FALSE;
 acpi_gbl_system_awake_and_running = TRUE;



 acpi_gbl_module_code_list = ((void*)0);
 acpi_gbl_root_node = ((void*)0);
 acpi_gbl_root_node_struct.name.integer = ACPI_ROOT_NAME;
 acpi_gbl_root_node_struct.descriptor_type = ACPI_DESC_TYPE_NAMED;
 acpi_gbl_root_node_struct.type = ACPI_TYPE_DEVICE;
 acpi_gbl_root_node_struct.parent = ((void*)0);
 acpi_gbl_root_node_struct.child = ((void*)0);
 acpi_gbl_root_node_struct.peer = ((void*)0);
 acpi_gbl_root_node_struct.object = ((void*)0);
 return_ACPI_STATUS(AE_OK);
}
