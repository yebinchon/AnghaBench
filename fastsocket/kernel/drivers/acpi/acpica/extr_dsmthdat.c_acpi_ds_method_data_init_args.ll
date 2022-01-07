; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_init_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_init_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }
%struct.acpi_walk_state = type { i32 }

@ds_method_data_init_args = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No param list passed to method\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_METHOD_NUM_ARGS = common dso_local global i64 0, align 8
@ACPI_REFCLASS_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%d args passed to method\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_method_data_init_args(%union.acpi_operand_object** %0, i64 %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %union.acpi_operand_object** %0, %union.acpi_operand_object*** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @ds_method_data_init_args, align 4
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %union.acpi_operand_object** %11)
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %14 = icmp ne %union.acpi_operand_object** %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ACPI_DB_EXEC, align 4
  %17 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([32 x i8]* @.str to i32))
  %18 = load i32, i32* @AE_OK, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %15, %3
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ACPI_METHOD_NUM_ARGS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %30, i64 %31
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %32, align 8
  %34 = icmp ne %union.acpi_operand_object* %33, null
  br label %35

35:                                               ; preds = %29, %25, %21
  %36 = phi i1 [ false, %25 ], [ false, %21 ], [ %34, %29 ]
  br i1 %36, label %37, label %55

37:                                               ; preds = %35
  %38 = load i32, i32* @ACPI_REFCLASS_ARG, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %40, i64 %41
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %42, align 8
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %45 = call i32 @acpi_ds_method_data_set_value(i32 %38, i64 %39, %union.acpi_operand_object* %43, %struct.acpi_walk_state* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  br label %52

52:                                               ; preds = %49, %37
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %21

55:                                               ; preds = %35
  %56 = load i32, i32* @ACPI_DB_EXEC, align 4
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @ACPI_DEBUG_PRINT(i32 %58)
  %60 = load i32, i32* @AE_OK, align 4
  %61 = call i32 @return_ACPI_STATUS(i32 %60)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object**) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_method_data_set_value(i32, i64, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
