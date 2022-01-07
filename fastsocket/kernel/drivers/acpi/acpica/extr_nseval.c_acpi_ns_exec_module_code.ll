; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nseval.c_acpi_ns_exec_module_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nseval.c_acpi_ns_exec_module_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_evaluate_info = type { i32 }

@ns_exec_module_code = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Executed module-level code at %p\0A\00", align 1
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_operand_object*, %struct.acpi_evaluate_info*)* @acpi_ns_exec_module_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ns_exec_module_code(%union.acpi_operand_object* %0, %struct.acpi_evaluate_info* %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %struct.acpi_evaluate_info*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  store %struct.acpi_evaluate_info* %1, %struct.acpi_evaluate_info** %4, align 8
  %7 = load i32, i32* @ns_exec_module_code, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %10 = call i32 @ACPI_MEMSET(%struct.acpi_evaluate_info* %9, i32 0, i32 4)
  %11 = load i32, i32* @acpi_gbl_root_node, align 4
  %12 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @acpi_gbl_root_node, align 4
  %15 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(i32 %14)
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %5, align 8
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %17 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %16)
  %18 = load i32, i32* @acpi_gbl_root_node, align 4
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %20 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %21 = call i32 @acpi_ns_attach_object(i32 %18, %union.acpi_operand_object* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %41

26:                                               ; preds = %2
  %27 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %28 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @ACPI_DB_INIT, align 4
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ACPI_DEBUG_PRINT(i32 %33)
  %35 = load i32, i32* @acpi_gbl_root_node, align 4
  %36 = call i32 @acpi_ns_detach_object(i32 %35)
  %37 = load i32, i32* @acpi_gbl_root_node, align 4
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %39 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %40 = call i32 @acpi_ns_attach_object(i32 %37, %union.acpi_operand_object* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %26, %25
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %43 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %42)
  %44 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_MEMSET(%struct.acpi_evaluate_info*, i32, i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(i32) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ns_attach_object(i32, %union.acpi_operand_object*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ns_detach_object(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
