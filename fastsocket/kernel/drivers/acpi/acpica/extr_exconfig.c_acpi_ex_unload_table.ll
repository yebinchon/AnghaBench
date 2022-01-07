; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exconfig.c_acpi_ex_unload_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exconfig.c_acpi_ex_unload_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.acpi_table_header = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_unload_table = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_TABLE_EVENT_UNLOAD = common dso_local global i32 0, align 4
@acpi_gbl_table_handler_context = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_unload_table(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_table_header*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %8 = load i32, i32* @AE_OK, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  store %union.acpi_operand_object* %9, %union.acpi_operand_object** %5, align 8
  %10 = load i32, i32* @ex_unload_table, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %16 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %15)
  %17 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %19
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26, %19, %14, %1
  %35 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @acpi_tb_is_table_loaded(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @AE_NOT_EXIST, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  br label %48

48:                                               ; preds = %45, %37
  br i1 true, label %49, label %61

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @acpi_get_table_by_index(i32 %50, %struct.acpi_table_header** %7)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @ACPI_SUCCESS(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @ACPI_TABLE_EVENT_UNLOAD, align 4
  %57 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %58 = load i32, i32* @acpi_gbl_table_handler_context, align 4
  %59 = call i32 @acpi_gbl_table_handler(i32 %56, %struct.acpi_table_header* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %49
  br label %61

61:                                               ; preds = %60, %48
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @acpi_tb_delete_namespace_by_owner(i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @ACPI_FAILURE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @return_ACPI_STATUS(i32 %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @acpi_tb_release_owner_id(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i32 @acpi_tb_set_table_loaded_flag(i32 %73, i32 %74)
  %76 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %77 = xor i32 %76, -1
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %79 = bitcast %union.acpi_operand_object* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %77
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* @AE_OK, align 4
  %84 = call i32 @return_ACPI_STATUS(i32 %83)
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_tb_is_table_loaded(i32) #1

declare dso_local i32 @acpi_gbl_table_handler(i32, %struct.acpi_table_header*, i32) #1

declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_tb_delete_namespace_by_owner(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_tb_release_owner_id(i32) #1

declare dso_local i32 @acpi_tb_set_table_loaded_flag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
