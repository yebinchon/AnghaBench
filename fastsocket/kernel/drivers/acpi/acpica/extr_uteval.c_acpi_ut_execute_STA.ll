; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_uteval.c_acpi_ut_execute_STA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_uteval.c_acpi_ut_execute_STA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ut_execute_STA = common dso_local global i32 0, align 4
@METHOD_NAME__STA = common dso_local global i32 0, align 4
@ACPI_BTYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"_STA on %4.4s was not found, assuming device is present\0A\00", align 1
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ut_execute_STA(%struct.acpi_namespace_node* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i64, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i32, i32* @ut_execute_STA, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %11 = load i32, i32* @METHOD_NAME__STA, align 4
  %12 = load i32, i32* @ACPI_BTYPE_INTEGER, align 4
  %13 = call i64 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %10, i32 %11, i32 %12, %union.acpi_operand_object** %6)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @ACPI_FAILURE(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i64, i64* @AE_NOT_FOUND, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @ACPI_DB_EXEC, align 4
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %24 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %23)
  %25 = call i32 @ACPI_DEBUG_PRINT(i32 %24)
  %26 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* @AE_OK, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %21, %17
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @return_ACPI_STATUS(i64 %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %39 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %38)
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @return_ACPI_STATUS(i64 %40)
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_ut_evaluate_object(%struct.acpi_namespace_node*, i32, i32, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
