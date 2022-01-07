; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nseval.c_acpi_ns_exec_module_code_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nseval.c_acpi_ns_exec_module_code_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_operand_object* }
%struct.acpi_evaluate_info = type { i32 }

@ns_exec_module_code_list = common dso_local global i32 0, align 4
@acpi_gbl_module_code_list = common dso_local global %union.acpi_operand_object* null, align 8
@return_VOID = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Executed %u blocks of module-level executable AML code\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_exec_module_code_list() #0 {
  %1 = alloca %union.acpi_operand_object*, align 8
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca %struct.acpi_evaluate_info*, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @ns_exec_module_code_list, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_module_code_list, align 8
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %2, align 8
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %9 = icmp ne %union.acpi_operand_object* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @return_VOID, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = call %struct.acpi_evaluate_info* @ACPI_ALLOCATE(i32 4)
  store %struct.acpi_evaluate_info* %13, %struct.acpi_evaluate_info** %3, align 8
  %14 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %15 = icmp ne %struct.acpi_evaluate_info* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @return_VOID, align 4
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %22, %18
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %21 = icmp ne %union.acpi_operand_object* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  store %union.acpi_operand_object* %23, %union.acpi_operand_object** %1, align 8
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %26, align 8
  store %union.acpi_operand_object* %27, %union.acpi_operand_object** %2, align 8
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %1, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %30, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %1, align 8
  %32 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %33 = call i32 @acpi_ns_exec_module_code(%union.acpi_operand_object* %31, %struct.acpi_evaluate_info* %32)
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %4, align 8
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %1, align 8
  %37 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %36)
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* @AE_INFO, align 4
  %40 = load i64, i64* %4, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @ACPI_INFO(i32 %41)
  %43 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %44 = call i32 @ACPI_FREE(%struct.acpi_evaluate_info* %43)
  store %union.acpi_operand_object* null, %union.acpi_operand_object** @acpi_gbl_module_code_list, align 8
  %45 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.acpi_evaluate_info* @ACPI_ALLOCATE(i32) #1

declare dso_local i32 @acpi_ns_exec_module_code(%union.acpi_operand_object*, %struct.acpi_evaluate_info*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_INFO(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_evaluate_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
