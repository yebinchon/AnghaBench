; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_restart_control_method.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_restart_control_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_operand_object*, i64, %union.acpi_operand_object*, i32, i32, i32 }
%union.acpi_operand_object = type { i32 }

@ds_restart_control_method = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"****Restart [%4.4s] Op %p ReturnValueFromCallee %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"    ReturnFromThisMethodUsed?=%X ResStack %p Walk %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_restart_control_method(%struct.acpi_walk_state* %0, %union.acpi_operand_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  %8 = load i32, i32* @ds_restart_control_method, align 4
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %10 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %8, %struct.acpi_walk_state* %9)
  %11 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @acpi_ut_get_node_name(i32 %14)
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %20 = ptrtoint %union.acpi_operand_object* %19 to i32
  %21 = call i32 @ACPI_DEBUG_PRINT(i32 %20)
  %22 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %30 = ptrtoint %struct.acpi_walk_state* %29 to i32
  %31 = call i32 @ACPI_DEBUG_PRINT(i32 %30)
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %33 = icmp ne %union.acpi_operand_object* %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %2
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 2
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %36, align 8
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %39 = icmp eq %union.acpi_operand_object* %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %42 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %34
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %48 = call i32 @acpi_ds_result_push(%union.acpi_operand_object* %46, %struct.acpi_walk_state* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %54 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 0
  store %union.acpi_operand_object* %58, %union.acpi_operand_object** %60, align 8
  br label %74

61:                                               ; preds = %34
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @acpi_ds_do_implicit_return(%union.acpi_operand_object* %62, %struct.acpi_walk_state* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %61
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %72 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %2
  %76 = load i32, i32* @AE_OK, align 4
  %77 = call i32 @return_ACPI_STATUS(i32 %76)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i32) #1

declare dso_local i32 @acpi_ds_result_push(%union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_do_implicit_return(%union.acpi_operand_object*, %struct.acpi_walk_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
