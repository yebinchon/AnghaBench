; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_do_implicit_return.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_do_implicit_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }
%struct.acpi_walk_state = type { %union.acpi_operand_object* }

@ds_do_implicit_return = common dso_local global i32 0, align 4
@acpi_gbl_enable_interpreter_slack = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Result %p will be implicitly returned; Prev=%p\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ds_do_implicit_return(%union.acpi_operand_object* %0, %struct.acpi_walk_state* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @ds_do_implicit_return, align 4
  %9 = call i32 @ACPI_FUNCTION_NAME(i32 %8)
  %10 = load i32, i32* @acpi_gbl_enable_interpreter_slack, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %14 = icmp ne %union.acpi_operand_object* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %3
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %4, align 8
  br label %51

17:                                               ; preds = %12
  %18 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 0
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %21, align 8
  %23 = ptrtoint %union.acpi_operand_object* %22 to i32
  %24 = call i32 @ACPI_DEBUG_PRINT(i32 %23)
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 0
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %26, align 8
  %28 = icmp ne %union.acpi_operand_object* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %17
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 0
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %31, align 8
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %34 = icmp eq %union.acpi_operand_object* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @TRUE, align 8
  store i64 %36, i64* %4, align 8
  br label %51

37:                                               ; preds = %29
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %39 = call i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %38)
  br label %40

40:                                               ; preds = %37, %17
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %43 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %42, i32 0, i32 0
  store %union.acpi_operand_object* %41, %union.acpi_operand_object** %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %48 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %49, %35, %15
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
