; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exconfig.c_acpi_ex_add_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exconfig.c_acpi_ex_add_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ex_add_table = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@ACPI_REFCLASS_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_namespace_node*, %union.acpi_operand_object**)* @acpi_ex_add_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ex_add_table(i32 %0, %struct.acpi_namespace_node* %1, %union.acpi_operand_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %6, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %7, align 8
  %10 = load i32, i32* @ex_add_table, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %13 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %12)
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %9, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %15 = icmp ne %union.acpi_operand_object* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @AE_NO_MEMORY, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @ACPI_REFCLASS_TABLE, align 4
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %31 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %38 = call i32 @acpi_ns_load_table(i32 %36, %struct.acpi_namespace_node* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %19
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %44 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %43)
  %45 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  br label %48

48:                                               ; preds = %42, %19
  %49 = call i32 (...) @acpi_ex_exit_interpreter()
  %50 = call i32 (...) @acpi_ns_exec_module_code_list()
  %51 = call i32 (...) @acpi_ex_enter_interpreter()
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @return_ACPI_STATUS(i32 %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ns_load_table(i32, %struct.acpi_namespace_node*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @acpi_ns_exec_module_code_list(...) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
