; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_remove_reference.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_remove_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ut_remove_reference = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Obj %p Current Refs=%X [To Be Decremented]\0A\00", align 1
@REF_DECREMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %2, align 8
  %3 = load i32, i32* @ut_remove_reference, align 4
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %5 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %3, %union.acpi_operand_object* %4)
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %7 = icmp ne %union.acpi_operand_object* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %10 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %9)
  %11 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @return_VOID, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %17 = call i32 @acpi_ut_valid_internal_object(%union.acpi_operand_object* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @return_VOID, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ACPI_DEBUG_PRINT(i32 %27)
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %30 = load i32, i32* @REF_DECREMENT, align 4
  %31 = call i32 @acpi_ut_update_object_reference(%union.acpi_operand_object* %29, i32 %30)
  %32 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_valid_internal_object(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_update_object_reference(%union.acpi_operand_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
