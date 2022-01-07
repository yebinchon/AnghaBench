; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_thread_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_thread_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thread_state = type { i32 }
%union.acpi_generic_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ut_create_thread_state = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_STATE_THREAD = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid zero ID from AcpiOsGetThreadId\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_thread_state* @acpi_ut_create_thread_state() #0 {
  %1 = alloca %struct.acpi_thread_state*, align 8
  %2 = alloca %union.acpi_generic_state*, align 8
  %3 = load i32, i32* @ut_create_thread_state, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 %3)
  %5 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %5, %union.acpi_generic_state** %2, align 8
  %6 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %7 = icmp ne %union.acpi_generic_state* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @return_PTR(%struct.acpi_thread_state* null)
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* @ACPI_DESC_TYPE_STATE_THREAD, align 4
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %13 = bitcast %union.acpi_generic_state* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = call i64 (...) @acpi_os_get_thread_id()
  %16 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %17 = bitcast %union.acpi_generic_state* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %20 = bitcast %union.acpi_generic_state* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %10
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = call i32 @ACPI_ERROR(i32 ptrtoint ([39 x i8]* @.str to i32))
  %27 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %28 = bitcast %union.acpi_generic_state* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 1, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %10
  %31 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %32 = bitcast %union.acpi_generic_state* %31 to %struct.acpi_thread_state*
  %33 = call i32 @return_PTR(%struct.acpi_thread_state* %32)
  %34 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %1, align 8
  ret %struct.acpi_thread_state* %34
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

declare dso_local i32 @return_PTR(%struct.acpi_thread_state*) #1

declare dso_local i64 @acpi_os_get_thread_id(...) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
