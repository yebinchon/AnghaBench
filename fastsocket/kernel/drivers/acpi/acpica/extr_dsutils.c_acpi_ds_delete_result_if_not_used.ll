; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_delete_result_if_not_used.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_delete_result_if_not_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { i32 }
%union.acpi_operand_object = type { i32 }
%struct.acpi_walk_state = type { i32 }

@ds_delete_result_if_not_used = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Null Op\00", align 1
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ds_delete_result_if_not_used(%union.acpi_parse_object* %0, %union.acpi_operand_object* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca i32, align 4
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %6, align 8
  %9 = load i32, i32* @ds_delete_result_if_not_used, align 4
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %union.acpi_operand_object* %10)
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %13 = icmp ne %union.acpi_parse_object* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AE_INFO, align 4
  %16 = call i32 @ACPI_ERROR(i32 ptrtoint ([8 x i8]* @.str to i32))
  %17 = load i32, i32* @return_VOID, align 4
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %20 = icmp ne %union.acpi_operand_object* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @return_VOID, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %26 = call i32 @acpi_ds_is_result_used(%union.acpi_parse_object* %24, %struct.acpi_walk_state* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %30 = call i32 @acpi_ds_result_pop(%union.acpi_operand_object** %7, %struct.acpi_walk_state* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @ACPI_SUCCESS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %36 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %35)
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ds_is_result_used(%union.acpi_parse_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_result_pop(%union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
