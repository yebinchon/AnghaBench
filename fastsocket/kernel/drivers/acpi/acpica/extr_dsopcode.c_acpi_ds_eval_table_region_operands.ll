; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_table_region_operands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_table_region_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64 }
%union.acpi_parse_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.acpi_namespace_node* }
%struct.TYPE_5__ = type { %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_table_header = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ds_eval_table_region_operands = common dso_local global i32 0, align 4
@ACPI_WALK_OPERANDS = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RgnObj %p Addr %8.8X%8.8X Len %X\0A\00", align 1
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_eval_table_region_operands(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca %union.acpi_parse_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  %13 = load i32, i32* @ds_eval_table_region_operands, align 4
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %13, %union.acpi_parse_object* %14)
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %17 = bitcast %union.acpi_parse_object* %16 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %18, align 8
  store %struct.acpi_namespace_node* %19, %struct.acpi_namespace_node** %9, align 8
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %21 = bitcast %union.acpi_parse_object* %20 to %struct.TYPE_6__*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %23, align 8
  store %union.acpi_parse_object* %24, %union.acpi_parse_object** %10, align 8
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %27 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %25, %union.acpi_parse_object* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %36 = bitcast %union.acpi_parse_object* %35 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ACPI_WALK_OPERANDS, align 4
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %41 = call i32 @acpi_ex_resolve_operands(i32 %38, i32 %39, %struct.acpi_walk_state* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  br label %48

48:                                               ; preds = %45, %34
  %49 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %49, i32 0, i32 0
  %51 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %50, align 8
  %52 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %51, i64 0
  store %union.acpi_operand_object** %52, %union.acpi_operand_object*** %8, align 8
  %53 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %54 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %53, i64 0
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %54, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_7__*
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %60 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %59, i64 1
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %60, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_7__*
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %66 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %65, i64 2
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %66, align 8
  %68 = bitcast %union.acpi_operand_object* %67 to %struct.TYPE_7__*
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @acpi_tb_find_table(i32 %58, i32 %64, i32 %70, i32* %11)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @ACPI_FAILURE(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %48
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @return_ACPI_STATUS(i32 %76)
  br label %78

78:                                               ; preds = %75, %48
  %79 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %80 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %79, i64 0
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %80, align 8
  %82 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %81)
  %83 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %84 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %83, i64 1
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %84, align 8
  %86 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %85)
  %87 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %88 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %87, i64 2
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %88, align 8
  %90 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %89)
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @acpi_get_table_by_index(i32 %91, %struct.acpi_table_header** %12)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @ACPI_FAILURE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %78
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @return_ACPI_STATUS(i32 %97)
  br label %99

99:                                               ; preds = %96, %78
  %100 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %101 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %100)
  store %union.acpi_operand_object* %101, %union.acpi_operand_object** %7, align 8
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %103 = icmp ne %union.acpi_operand_object* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @AE_NOT_EXIST, align 4
  %106 = call i32 @return_ACPI_STATUS(i32 %105)
  br label %107

107:                                              ; preds = %104, %99
  %108 = load %struct.acpi_table_header*, %struct.acpi_table_header** %12, align 8
  %109 = call i64 @ACPI_TO_INTEGER(%struct.acpi_table_header* %108)
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_8__*
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i64 %109, i64* %112, align 8
  %113 = load %struct.acpi_table_header*, %struct.acpi_table_header** %12, align 8
  %114 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %117 = bitcast %union.acpi_operand_object* %116 to %struct.TYPE_8__*
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @ACPI_DB_EXEC, align 4
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %122 = bitcast %union.acpi_operand_object* %121 to %struct.TYPE_8__*
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @ACPI_FORMAT_NATIVE_UINT(i64 %124)
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %127 = bitcast %union.acpi_operand_object* %126 to %struct.TYPE_8__*
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ACPI_DEBUG_PRINT(i32 %129)
  %131 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %132 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %133 = bitcast %union.acpi_operand_object* %132 to %struct.TYPE_8__*
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @return_ACPI_STATUS(i32 %137)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_resolve_operands(i32, i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_tb_find_table(i32, i32, i32, i32*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i64 @ACPI_TO_INTEGER(%struct.acpi_table_header*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_NATIVE_UINT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
