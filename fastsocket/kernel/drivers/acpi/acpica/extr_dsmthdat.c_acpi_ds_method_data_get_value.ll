; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_get_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object* }

@ds_method_data_get_value = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Null object descriptor pointer\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@acpi_gbl_enable_interpreter_slack = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Uninitialized Arg[%d] at node %p\00", align 1
@AE_AML_UNINITIALIZED_ARG = common dso_local global i32 0, align 4
@AE_AML_UNINITIALIZED_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Not a Arg/Local opcode: %X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_method_data_get_value(i32 %0, i32 %1, %struct.acpi_walk_state* %2, %union.acpi_operand_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_walk_state*, align 8
  %9 = alloca %union.acpi_operand_object**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_namespace_node*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %8, align 8
  store %union.acpi_operand_object** %3, %union.acpi_operand_object*** %9, align 8
  %13 = load i32, i32* @ds_method_data_get_value, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %16 = icmp ne %union.acpi_operand_object** %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @AE_INFO, align 4
  %19 = call i32 @ACPI_ERROR(i32 ptrtoint ([31 x i8]* @.str to i32))
  %20 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  br label %22

22:                                               ; preds = %17, %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %26 = call i32 @acpi_ds_method_data_get_node(i32 %23, i32 %24, %struct.acpi_walk_state* %25, %struct.acpi_namespace_node** %11)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %35 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %34, i32 0, i32 0
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %35, align 8
  store %union.acpi_operand_object* %36, %union.acpi_operand_object** %12, align 8
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %38 = icmp ne %union.acpi_operand_object* %37, null
  br i1 %38, label %78, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* @acpi_gbl_enable_interpreter_slack, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %44 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %43)
  store %union.acpi_operand_object* %44, %union.acpi_operand_object** %12, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %46 = icmp ne %union.acpi_operand_object* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @AE_NO_MEMORY, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %55 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %56 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %55, i32 0, i32 0
  store %union.acpi_operand_object* %54, %union.acpi_operand_object** %56, align 8
  br label %77

57:                                               ; preds = %39
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %70 [
    i32 129, label %59
    i32 128, label %67
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* @AE_INFO, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %63 = ptrtoint %struct.acpi_namespace_node* %62 to i32
  %64 = call i32 @ACPI_ERROR(i32 %63)
  %65 = load i32, i32* @AE_AML_UNINITIALIZED_ARG, align 4
  %66 = call i32 @return_ACPI_STATUS(i32 %65)
  br label %67

67:                                               ; preds = %57, %59
  %68 = load i32, i32* @AE_AML_UNINITIALIZED_LOCAL, align 4
  %69 = call i32 @return_ACPI_STATUS(i32 %68)
  br label %70

70:                                               ; preds = %57, %67
  %71 = load i32, i32* @AE_INFO, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ACPI_ERROR(i32 %72)
  %74 = load i32, i32* @AE_AML_INTERNAL, align 4
  %75 = call i32 @return_ACPI_STATUS(i32 %74)
  br label %76

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %50
  br label %78

78:                                               ; preds = %77, %33
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %80 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  store %union.acpi_operand_object* %79, %union.acpi_operand_object** %80, align 8
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %82 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %81)
  %83 = load i32, i32* @AE_OK, align 4
  %84 = call i32 @return_ACPI_STATUS(i32 %83)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_method_data_get_node(i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
