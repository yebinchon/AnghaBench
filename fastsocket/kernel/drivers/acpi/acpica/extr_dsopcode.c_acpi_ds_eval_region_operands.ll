; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_region_operands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_region_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%union.acpi_parse_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %union.acpi_parse_object*, %struct.TYPE_5__, %struct.acpi_namespace_node* }
%struct.TYPE_5__ = type { %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_7__ = type { i64 }

@ds_eval_region_operands = common dso_local global i32 0, align 4
@ACPI_WALK_OPERANDS = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RgnObj %p Addr %8.8X%8.8X Len %X\0A\00", align 1
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_eval_region_operands(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  %11 = load i32, i32* @ds_eval_region_operands, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_parse_object* %12)
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_6__*
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %16, align 8
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %9, align 8
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %19 = bitcast %union.acpi_parse_object* %18 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %21, align 8
  store %union.acpi_parse_object* %22, %union.acpi_parse_object** %10, align 8
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %24 = bitcast %union.acpi_parse_object* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %25, align 8
  store %union.acpi_parse_object* %26, %union.acpi_parse_object** %10, align 8
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %29 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %27, %union.acpi_parse_object* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @return_ACPI_STATUS(i32 %34)
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %38 = bitcast %union.acpi_parse_object* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ACPI_WALK_OPERANDS, align 4
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %43 = call i32 @acpi_ex_resolve_operands(i32 %40, i32 %41, %struct.acpi_walk_state* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %47, %36
  %51 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %52 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %51)
  store %union.acpi_operand_object* %52, %union.acpi_operand_object** %7, align 8
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %54 = icmp ne %union.acpi_operand_object* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @AE_NOT_EXIST, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 1
  %61 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %60, align 8
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %63 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %61, i64 %66
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %67, align 8
  store %union.acpi_operand_object* %68, %union.acpi_operand_object** %8, align 8
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_7__*
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %77 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %76)
  %78 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %79 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %78, i32 0, i32 1
  %80 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %79, align 8
  %81 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %82 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %80, i64 %85
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %86, align 8
  store %union.acpi_operand_object* %87, %union.acpi_operand_object** %8, align 8
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %89 = bitcast %union.acpi_operand_object* %88 to %struct.TYPE_7__*
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %93 = bitcast %union.acpi_operand_object* %92 to %struct.TYPE_8__*
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i64 %91, i64* %94, align 8
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %96 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %95)
  %97 = load i32, i32* @ACPI_DB_EXEC, align 4
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %100 = bitcast %union.acpi_operand_object* %99 to %struct.TYPE_8__*
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ACPI_FORMAT_NATIVE_UINT(i64 %102)
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_8__*
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @ACPI_DEBUG_PRINT(i32 %108)
  %110 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %112 = bitcast %union.acpi_operand_object* %111 to %struct.TYPE_8__*
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @return_ACPI_STATUS(i32 %116)
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_resolve_operands(i32, i32, %struct.acpi_walk_state*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_NATIVE_UINT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
