; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_acquire_mutex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_acquire_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.acpi_walk_state = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64 }

@ex_acquire_mutex = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cannot acquire Mutex [%4.4s], null thread info\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Cannot acquire Mutex [%4.4s], current SyncLevel is too large (%d)\00", align 1
@AE_AML_MUTEX_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_acquire_mutex(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %9 = load i32, i32* @ex_acquire_mutex, align 4
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %union.acpi_operand_object* %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @AE_INFO, align 4
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @acpi_ut_get_node_name(i32 %27)
  %29 = call i32 @ACPI_ERROR(i32 %28)
  %30 = load i32, i32* @AE_AML_INTERNAL, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %22, %17
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %32
  %44 = load i32, i32* @AE_INFO, align 4
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @acpi_ut_get_node_name(i32 %48)
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %51 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ACPI_ERROR(i32 %55)
  %57 = load i32, i32* @AE_AML_MUTEX_ORDER, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  br label %59

59:                                               ; preds = %43, %32
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %61 = bitcast %union.acpi_operand_object* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %66 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %67 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @acpi_ex_acquire_mutex_object(i32 %64, %union.acpi_operand_object* %65, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @ACPI_SUCCESS(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %59
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_5__*
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %83 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_5__*
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %87, align 8
  %88 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %89 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i64 %92, i64* %95, align 8
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %97 = bitcast %union.acpi_operand_object* %96 to %struct.TYPE_5__*
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %101 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %99, i64* %103, align 8
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %105 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %106 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = call i32 @acpi_ex_link_mutex(%union.acpi_operand_object* %104, %struct.TYPE_6__* %107)
  br label %109

109:                                              ; preds = %81, %75, %59
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @return_ACPI_STATUS(i32 %110)
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i32) #1

declare dso_local i32 @acpi_ex_acquire_mutex_object(i32, %union.acpi_operand_object*, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ex_link_mutex(%union.acpi_operand_object*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
