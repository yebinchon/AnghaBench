; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utglobal.c_acpi_ut_init_globals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utglobal.c_acpi_ut_init_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ut_init_globals = common dso_local global i32 0, align 4
@ACPI_NUM_MUTEX = common dso_local global i64 0, align 8
@acpi_gbl_mutex_info = common dso_local global %struct.TYPE_9__* null, align 8
@ACPI_MUTEX_NOT_ACQUIRED = common dso_local global i32 0, align 4
@ACPI_NUM_OWNERID_MASKS = common dso_local global i64 0, align 8
@acpi_gbl_owner_id_mask = common dso_local global i32* null, align 8
@acpi_gbl_gpe_xrupt_list_head = common dso_local global i32* null, align 8
@acpi_gbl_gpe_fadt_blocks = common dso_local global i32** null, align 8
@acpi_current_gpe_count = common dso_local global i64 0, align 8
@acpi_gbl_system_notify = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@acpi_gbl_device_notify = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@acpi_gbl_exception_handler = common dso_local global i32* null, align 8
@acpi_gbl_init_handler = common dso_local global i32* null, align 8
@acpi_gbl_table_handler = common dso_local global i32* null, align 8
@acpi_gbl_global_lock_semaphore = common dso_local global i32* null, align 8
@acpi_gbl_global_lock_mutex = common dso_local global i32* null, align 8
@FALSE = common dso_local global i8* null, align 8
@acpi_gbl_global_lock_acquired = common dso_local global i8* null, align 8
@acpi_gbl_global_lock_handle = common dso_local global i64 0, align 8
@acpi_gbl_global_lock_present = common dso_local global i8* null, align 8
@acpi_gbl_cm_single_step = common dso_local global i8* null, align 8
@acpi_gbl_db_terminate_threads = common dso_local global i8* null, align 8
@acpi_gbl_shutdown = common dso_local global i8* null, align 8
@acpi_gbl_ns_lookup_count = common dso_local global i64 0, align 8
@acpi_gbl_ps_find_count = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@acpi_gbl_acpi_hardware_present = common dso_local global i8* null, align 8
@acpi_gbl_last_owner_id_index = common dso_local global i64 0, align 8
@acpi_gbl_next_owner_id_offset = common dso_local global i64 0, align 8
@acpi_gbl_trace_method_name = common dso_local global i64 0, align 8
@acpi_gbl_trace_dbg_level = common dso_local global i64 0, align 8
@acpi_gbl_trace_dbg_layer = common dso_local global i64 0, align 8
@DEBUGGER_THREADING = common dso_local global i32 0, align 4
@acpi_gbl_debugger_configuration = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4
@acpi_gbl_db_output_flags = common dso_local global i32 0, align 4
@acpi_gbl_osi_data = common dso_local global i64 0, align 8
@acpi_gbl_events_initialized = common dso_local global i8* null, align 8
@acpi_gbl_system_awake_and_running = common dso_local global i8* null, align 8
@acpi_gbl_module_code_list = common dso_local global i32* null, align 8
@acpi_gbl_root_node = common dso_local global i32* null, align 8
@ACPI_ROOT_NAME = common dso_local global i32 0, align 4
@acpi_gbl_root_node_struct = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_SIZE_MAX = common dso_local global i32 0, align 4
@acpi_gbl_display_final_mem_stats = common dso_local global i8* null, align 8
@acpi_gbl_lowest_stack_pointer = common dso_local global i32 0, align 4
@acpi_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_init_globals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @ut_init_globals, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = call i32 (...) @acpi_ut_create_caches()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @ACPI_FAILURE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @return_ACPI_STATUS(i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ACPI_NUM_MUTEX, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @acpi_gbl_mutex_info, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @ACPI_MUTEX_NOT_ACQUIRED, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @acpi_gbl_mutex_info, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @acpi_gbl_mutex_info, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %18
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %14

35:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %44, %35
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @ACPI_NUM_OWNERID_MASKS, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32*, i32** @acpi_gbl_owner_id_mask, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %36

47:                                               ; preds = %36
  %48 = load i32*, i32** @acpi_gbl_owner_id_mask, align 8
  %49 = load i64, i64* @ACPI_NUM_OWNERID_MASKS, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 -2147483648, i32* %51, align 4
  store i32* null, i32** @acpi_gbl_gpe_xrupt_list_head, align 8
  %52 = load i32**, i32*** @acpi_gbl_gpe_fadt_blocks, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  store i32* null, i32** %53, align 8
  %54 = load i32**, i32*** @acpi_gbl_gpe_fadt_blocks, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  store i32* null, i32** %55, align 8
  store i64 0, i64* @acpi_current_gpe_count, align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @acpi_gbl_system_notify, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @acpi_gbl_device_notify, i32 0, i32 0), align 8
  store i32* null, i32** @acpi_gbl_exception_handler, align 8
  store i32* null, i32** @acpi_gbl_init_handler, align 8
  store i32* null, i32** @acpi_gbl_table_handler, align 8
  store i32* null, i32** @acpi_gbl_global_lock_semaphore, align 8
  store i32* null, i32** @acpi_gbl_global_lock_mutex, align 8
  %56 = load i8*, i8** @FALSE, align 8
  store i8* %56, i8** @acpi_gbl_global_lock_acquired, align 8
  store i64 0, i64* @acpi_gbl_global_lock_handle, align 8
  %57 = load i8*, i8** @FALSE, align 8
  store i8* %57, i8** @acpi_gbl_global_lock_present, align 8
  %58 = load i8*, i8** @FALSE, align 8
  store i8* %58, i8** @acpi_gbl_cm_single_step, align 8
  %59 = load i8*, i8** @FALSE, align 8
  store i8* %59, i8** @acpi_gbl_db_terminate_threads, align 8
  %60 = load i8*, i8** @FALSE, align 8
  store i8* %60, i8** @acpi_gbl_shutdown, align 8
  store i64 0, i64* @acpi_gbl_ns_lookup_count, align 8
  store i64 0, i64* @acpi_gbl_ps_find_count, align 8
  %61 = load i8*, i8** @TRUE, align 8
  store i8* %61, i8** @acpi_gbl_acpi_hardware_present, align 8
  store i64 0, i64* @acpi_gbl_last_owner_id_index, align 8
  store i64 0, i64* @acpi_gbl_next_owner_id_offset, align 8
  store i64 0, i64* @acpi_gbl_trace_method_name, align 8
  store i64 0, i64* @acpi_gbl_trace_dbg_level, align 8
  store i64 0, i64* @acpi_gbl_trace_dbg_layer, align 8
  %62 = load i32, i32* @DEBUGGER_THREADING, align 4
  store i32 %62, i32* @acpi_gbl_debugger_configuration, align 4
  %63 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  store i32 %63, i32* @acpi_gbl_db_output_flags, align 4
  store i64 0, i64* @acpi_gbl_osi_data, align 8
  %64 = load i8*, i8** @FALSE, align 8
  store i8* %64, i8** @acpi_gbl_events_initialized, align 8
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** @acpi_gbl_system_awake_and_running, align 8
  store i32* null, i32** @acpi_gbl_module_code_list, align 8
  store i32* null, i32** @acpi_gbl_root_node, align 8
  %66 = load i32, i32* @ACPI_ROOT_NAME, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_root_node_struct, i32 0, i32 6, i32 0), align 8
  %67 = load i32, i32* @ACPI_DESC_TYPE_NAMED, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_root_node_struct, i32 0, i32 5), align 4
  %68 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_root_node_struct, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_root_node_struct, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_root_node_struct, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_root_node_struct, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_root_node_struct, i32 0, i32 0), align 8
  %69 = load i32, i32* @AE_OK, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_create_caches(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
