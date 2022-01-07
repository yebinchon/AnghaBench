; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_queue_notify_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_queue_notify_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %union.acpi_operand_object*, %union.acpi_operand_object* }
%union.acpi_generic_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %union.acpi_operand_object*, i64, %struct.acpi_namespace_node* }
%struct.TYPE_7__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ev_queue_notify_request = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Dispatching Notify on [%4.4s] Node %p Value 0x%2.2X (%s)\0A\00", align 1
@ACPI_MAX_SYS_NOTIFY = common dso_local global i64 0, align 8
@AE_TYPE = common dso_local global i32 0, align 4
@acpi_gbl_system_notify = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@acpi_gbl_device_notify = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Executing system notify handler for Notify (%4.4s, %X) node %p\0A\00", align 1
@ACPI_DESC_TYPE_STATE_NOTIFY = common dso_local global i32 0, align 4
@OSL_NOTIFY_HANDLER = common dso_local global i32 0, align 4
@acpi_ev_notify_dispatch = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"No notify handler for Notify (%4.4s, %X) node %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_queue_notify_request(%struct.acpi_namespace_node* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_generic_state*, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %4, align 8
  store i64 %1, i64* %5, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %7, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @ev_queue_notify_request, align 4
  %12 = call i32 @ACPI_FUNCTION_NAME(i32 %11)
  %13 = load i32, i32* @ACPI_DB_INFO, align 4
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %15 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %14)
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @acpi_ut_get_notify_name(i64 %18)
  %20 = call i32 @ACPI_DEBUG_PRINT(i32 %19)
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %22 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %21)
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %6, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %24 = icmp ne %union.acpi_operand_object* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %2
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %44 [
    i32 130, label %29
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %25, %25, %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @ACPI_MAX_SYS_NOTIFY, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %36, align 8
  store %union.acpi_operand_object* %37, %union.acpi_operand_object** %7, align 8
  br label %43

38:                                               ; preds = %29
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %41, align 8
  store %union.acpi_operand_object* %42, %union.acpi_operand_object** %7, align 8
  br label %43

43:                                               ; preds = %38, %33
  br label %46

44:                                               ; preds = %25
  %45 = load i32, i32* @AE_TYPE, align 4
  store i32 %45, i32* %3, align 4
  br label %119

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @acpi_gbl_system_notify, i32 0, i32 0), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @ACPI_MAX_SYS_NOTIFY, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %50, %47
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @acpi_gbl_device_notify, i32 0, i32 0), align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @ACPI_MAX_SYS_NOTIFY, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %54
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %63 = icmp ne %union.acpi_operand_object* %62, null
  br i1 %63, label %64, label %109

64:                                               ; preds = %61, %57, %50
  %65 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %65, %union.acpi_generic_state** %8, align 8
  %66 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %67 = icmp ne %union.acpi_generic_state* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %69, i32* %3, align 4
  br label %119

70:                                               ; preds = %64
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %72 = icmp ne %union.acpi_operand_object* %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @ACPI_DB_INFO, align 4
  %75 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %76 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %75)
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %79 = ptrtoint %struct.acpi_namespace_node* %78 to i32
  %80 = call i32 @ACPI_DEBUG_PRINT(i32 %79)
  br label %81

81:                                               ; preds = %73, %70
  %82 = load i32, i32* @ACPI_DESC_TYPE_STATE_NOTIFY, align 4
  %83 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %84 = bitcast %union.acpi_generic_state* %83 to %struct.TYPE_7__*
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %87 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %88 = bitcast %union.acpi_generic_state* %87 to %struct.TYPE_8__*
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store %struct.acpi_namespace_node* %86, %struct.acpi_namespace_node** %89, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %92 = bitcast %union.acpi_generic_state* %91 to %struct.TYPE_8__*
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %95 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %96 = bitcast %union.acpi_generic_state* %95 to %struct.TYPE_8__*
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store %union.acpi_operand_object* %94, %union.acpi_operand_object** %97, align 8
  %98 = load i32, i32* @OSL_NOTIFY_HANDLER, align 4
  %99 = load i32, i32* @acpi_ev_notify_dispatch, align 4
  %100 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %101 = call i32 @acpi_os_execute(i32 %98, i32 %99, %union.acpi_generic_state* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @ACPI_FAILURE(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %81
  %106 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %107 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %106)
  br label %108

108:                                              ; preds = %105, %81
  br label %117

109:                                              ; preds = %61
  %110 = load i32, i32* @ACPI_DB_INFO, align 4
  %111 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %112 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %111)
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %115 = ptrtoint %struct.acpi_namespace_node* %114 to i32
  %116 = call i32 @ACPI_DEBUG_PRINT(i32 %115)
  br label %117

117:                                              ; preds = %109, %108
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %68, %44
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_get_notify_name(i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

declare dso_local i32 @acpi_os_execute(i32, i32, %union.acpi_generic_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
