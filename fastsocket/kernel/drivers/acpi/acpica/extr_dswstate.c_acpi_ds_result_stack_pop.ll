; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_result_stack_pop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_result_stack_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, i32, i32* }
%union.acpi_generic_state = type { i32 }

@ds_result_stack_pop = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Result stack underflow - State=%p\0A\00", align 1
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@ACPI_RESULTS_FRAME_OBJ_NUM = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Insufficient result stack size\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Result=%p RemainingResults=%X State=%p\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_walk_state*)* @acpi_ds_result_stack_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ds_result_stack_pop(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %5 = load i32, i32* @ds_result_stack_pop, align 4
  %6 = call i32 @ACPI_FUNCTION_NAME(i32 %5)
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @ACPI_DB_EXEC, align 4
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %14 = ptrtoint %struct.acpi_walk_state* %13 to i32
  %15 = call i32 @ACPI_DEBUG_PRINT(i32 %14)
  %16 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ACPI_RESULTS_FRAME_OBJ_NUM, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @AE_INFO, align 4
  %25 = call i32 @ACPI_ERROR(i32 ptrtoint ([31 x i8]* @.str.1 to i32))
  %26 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %26, i32* %2, align 4
  br label %47

27:                                               ; preds = %17
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 2
  %30 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(i32** %29)
  store %union.acpi_generic_state* %30, %union.acpi_generic_state** %4, align 8
  %31 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %32 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %31)
  %33 = load i64, i64* @ACPI_RESULTS_FRAME_OBJ_NUM, align 8
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load i32, i32* @ACPI_DB_EXEC, align 4
  %39 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %44 = ptrtoint %struct.acpi_walk_state* %43 to i32
  %45 = call i32 @ACPI_DEBUG_PRINT(i32 %44)
  %46 = load i32, i32* @AE_OK, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %27, %23, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(i32**) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
